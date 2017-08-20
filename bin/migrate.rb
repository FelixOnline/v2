#!/usr/bin/env ruby

require 'mysql2'
require 'pp'
require 'json'
require 'nokogiri'

host     = ARGV[0] || "0.0.0.0"
username = ARGV[1] || "root"
password = ARGV[2] || "password"
database = ARGV[3] || "felix"

def format_username(username)
  username.downcase.gsub(/\s+/, "-").gsub(/\W+/, "")
end

client = Mysql2::Client.new(host: host, username: username, password: password, database: database)

`rm -rf content/authors/*`
`rm -rf content/articles/*`

ALL_AUTHORS_QUERY = <<~SQL
select
  distinct(author) as id,

  user.name as name,
  user.twitter as twitter,
  user.facebook as facebook,
  user.websiteurl as website,
  user.websitename as website_title,
  user_images.uri as image

from article_author
  left join user on user.user=author
  left join image as user_images on user.image=user_images.id

SQL

client.query(ALL_AUTHORS_QUERY).each_with_index do |r, i|
  r["id"] = format_username(r["id"])

  md = %w(---)
  md << "id: \"#{r["id"]}\""
  md << "title: #{r["name"]}"
  md << "image_path: \"http://felixonline.co.uk/#{r["image"]}\""
  md << "twitter: \"#{r["twitter"]}\""
  md << "facebook: \"#{r["facebook"]}\""
  md << "website_url: \"#{r["website"]}\""
  md << "website_title: \"#{r["website_title"]}\""
  md << "---"

  dir = "content/authors/#{r["id"]}"
  Dir.mkdir(dir) unless Dir.exists?(dir)
  File.write("content/authors/#{r["id"]}/_index.md", md.join("\n") + "\n")
end


ALL_ARTICLES_QUERY = <<~SQL
select
  article.id as article_id,
  article.title as article_title,
  article.date as article_date,
  article.video_url as article_video_url,
  article.teaser as article_teaser,

  text_story.content as content,

  GROUP_CONCAT(comment.comment) as comments,

  category.label as category,
  category.cat as category_slug,

  image.uri as image_path,
  article.img_caption as image_caption,
  image.attribution as image_attribution,
  image.attr_link as image_attribution_link,

  GROUP_CONCAT(article_author.author) as authors,

  user.user as text_author

from article
  left join category             on category.id=article.category
  left join image                on image.id=article.img1
  left join text_story           on text_story.id=article.text1
  left join comment              on comment.article=article.id
  left join user                 on user.user=text_story.user
  left join image as user_images on user.image=user_images.id
  left join article_author       on article_author.article=article.id

group by article.id

SQL

client.query(ALL_ARTICLES_QUERY).each_with_index do |r, i|
  r["comments"] ||= ""

  md = %w(---)
  md << "title: >\n  #{r["article_title"].gsub(/\s+/, " ")}"
  md << "subtitle: >\n  #{r["article_teaser"].gsub(/\s+/, " ")}"
  md << "date: \"#{r["article_date"]}\""

  md << "\n# Attributes from Felix Online V1"
  md << "id: \"#{r["article_id"]}\""
  old_path = "/#{r["category_slug"]}/#{r["article_id"]}/#{r["article_title"].downcase.gsub(/\s+/, "-").gsub(/[^\w\-]/, "")}"
  md << "old_path: #{old_path}"
  md << "aliases:"
  md << " - #{old_path}"
  md << "imported: true"
  md << "comments:"
  r["comments"].split(/\s+\+\s+/).each do |c|
    text = Nokogiri::HTML::DocumentFragment.parse(c).to_s.gsub(/\n+/, "<br>").gsub(/\s+/, " ").gsub(/[^[:print:]]/ , '')
    next if text.include? "[/url]" # bb code
    md << " - value: >\n     #{text}"
  end

  md << "\n# Article Taxonomies"
  category = r["category"].downcase.gsub("&", "and").gsub(/\s+/, "-")
  authors = (r["authors"].downcase.split(",") + [r["text_author"]]).uniq.compact.sort
  md << "categories:\n - #{category}"
  md << "tags:"
  md << " - imported"
  md << " - image" if r["image_path"] && r["image_path"].length > 0
  md << " - imported_comments" if r["comments"].length > 0
  md << " - multi-author" if authors.length > 1
  md << "authors:"
  authors.each do |author|
    md << " - #{format_username(author)}"
  end
  md << "highlights:"
  md << " - comment" if r["comments"].length > 0
  md << " - longread" if r["content"].to_s.split(" ").length > 1000
  md << " - photos" if r["content"].to_s.include?("image")

  md << "\n# Homepage control params"
  md << "headline: true"
  md << "featured: true"

  md << "\n# Image metadata"
  md << "image_path: \"http://felixonline.co.uk/#{r["image_path"]}\""
  md << "image_caption: >\n  #{r["image_caption"]}"
  md << "image_attribution: \"#{(r["image_attribution"] || "").gsub(/\W*\\\W*/, " - ").gsub(/^\W+/, "")}\""
  md << "image_attribution_link: \"#{r["image_attribution_link"]}\""
  md << "video_url: \"#{r["article_video_url"]}\""
  md << "---\n"

  JSON.parse(r["content"])["data"].each do |section|
    if section["type"] == "text"
      md << section["data"]["text"].split("\n\n").map(&:strip).join("\n\n")
    elsif section["type"] == "quote"
      md << section["data"]["text"]
        .split("\n")
        .reject { |l| l.strip == "" }
        .map { |l| "> #{l.strip}" }
        .join("\n")
    elsif section["type"] == "list"
      md << section["data"]["text"]
        .split("\n")
        .reject { |l| l.strip == "" }
        .join("\n")
    elsif section["type"] == "ordered_list"
      md << section["data"]["text"]
        .split("\n")
        .reject { |l| l.strip == "" }
        .join("\n")
    elsif section["type"] == "heading"
      md << "## #{section["data"]["text"].strip}"
    elsif section["type"] == "feliximage"
      puts "Image section: #{section["data"]["image"]["attributionLink"]}"
    elsif section["type"] == "video"
      puts "Video " + section["data"]["remote_id"]
    else
      pp section
      raise
    end
  end

  filename = "#{r["article_date"].year}-#{r["article_date"].month}-#{r["article_date"].day}-#{r["article_title"].downcase.strip.gsub(/\s+/, "-").gsub(/[^\w\-]/, "")}".gsub(/\-+/, "-")
  puts "Overwriting: #{filename}" if File.exists? filename

  contents = md.join("\n") + "\n"
  contents.gsub!(/ +$/, "")
  contents.gsub!(/\\(\W)/, '\1')

  File.write("content/articles/#{filename}.md", contents)
end
