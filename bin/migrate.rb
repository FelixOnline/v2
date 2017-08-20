#!/usr/bin/env ruby

require 'mysql2'
require 'pp'
require 'json'
require 'nokogiri'

host     = ARGV[0] || "0.0.0.0"
username = ARGV[1] || "root"
password = ARGV[2] || "password"
database = ARGV[3] || "felix"

Dir.glob("_posts/*").each do |post|
  File.delete(post) unless post.include?("charlie-s-f") || post.include?("angelo--")
end

client = Mysql2::Client.new(host: host, username: username, password: password, database: database)

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
  image.width as image_width,
  image.height as image_height,
  image.attribution as image_attribution,
  image.attr_link as image_attribution_link,

  user.user as author_id,
  user.name as author_name,
  user.twitter as author_twitter,
  user.facebook as author_facebook,
  user.websitename as author_website_title,
  user.websiteurl as author_website_url,
  user_images.uri as author_image_path

from article
  left join category   on category.id=article.category
  left join image      on image.id=article.img1
  left join text_story on text_story.id=article.text1
  left join comment    on comment.article=article.id
  left join user       on user.user=text_story.user
  left join image as user_images on user.image=user_images.id

group by article.id

SQL

count = 0
client.query(ALL_ARTICLES_QUERY).each_with_index do |r, i|
  r["comments"] ||= ""
  r["author_id"] = (r["author_id"] || "felix").downcase

  md = %w(---)
  md << "title: >\n  #{r["article_title"].gsub(/\s+/, " ")}"
  md << "subtitle: >\n  #{r["article_teaser"].gsub(/\s+/, " ")}"
  md << "date: \"#{r["article_date"]}\""
  md << "author_id: \"#{r["author_id"]}\""

  md << "\n# Attributes from Felix Online V1"
  md << "id: \"#{r["article_id"]}\""
  old_path = "/#{r["category_slug"]}/#{r["article_id"]}/#{r["article_title"].downcase.gsub(/\s+/, "-").gsub(/[^\w\-]/, "")}"
  md << "old_path: #{old_path}"
  md << "aliases:"
  md << " - #{old_path}"
  md << "imported: true"
  md << "comments:"
  r["comments"].split(/\s+\+\s+/).each do |c|
    md << " - #{Nokogiri::HTML(c).text.gsub(/[^\w ]/, "")}"
  end

  md << "\n# Article Taxonomies"
  category = r["category"].downcase.gsub("&", "and").gsub(/\s+/, "-")
  md << "categories:\n - #{category}"
  md << "tags: \n - #{category}"
  md << " - imported"
  md << " - image" if r["image_path"] && r["image_path"].length > 0
  md << " - imported_comments" if r["comments"].length > 0
  md << "authors:"
  md << " - #{r["author_id"]}"
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
  md << "image_width: \"#{r["image_width"]}\""
  md << "image_height: \"#{r["image_height"]}\""
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
      # TODO: these are felix images, perhaps build an index of them
      md << "TODO: image from #{section["data"]["image"]["attributionLink"]}"
    elsif section["type"] == "video"
      # TODO: need to build a video embed
      md << "TODO: video from #{section["data"]["remote_id"]}"
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

  # TODO: some articles are missing in the exported folder, investigate
  File.write("content/articles/#{filename}.md", contents)

  next if r["author_id"] == "felix"
  if r["author_id"]
    md = %w(---)
    md << "id: \"#{r["author_id"]}\""
    md << "title: #{r["author_name"]}"
    md << "image_path: \"http://felixonline.co.uk/#{r["author_image_path"]}\""
    md << "twitter: \"#{r["author_twitter"]}\""
    md << "facebook: \"#{r["author_facebook"]}\""
    md << "website_url: \"#{r["author_website_url"]}\""
    md << "website_title: \"#{r["author_website_title"]}\""
    md << "---"

    dir = "content/authors/#{r["author_id"]}"
    Dir.mkdir(dir) unless Dir.exists?(dir)
    File.write("content/authors/#{r["author_id"]}/_index.md", md.join("\n") + "\n")
  end
end
