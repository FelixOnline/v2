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
all_referenced_images = []

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
  image = "http://felixonline.co.uk/#{r["image"]}"
  all_referenced_images << image
  md << "image: \"#{image}\""
  md << "twitter: \"#{r["twitter"]}\""
  md << "facebook: \"#{r["facebook"]}\""
  md << "website_url: \"#{r["website"]}\""
  md << "website_title: \"#{r["website_title"]}\""
  md << "---"

  dir = "content/authors/#{r["id"]}"
  Dir.mkdir(dir) unless Dir.exists?(dir)
  File.write("content/authors/#{r["id"]}/_index.md", md.join("\n") + "\n")
end

ALL_IMAGES_QUERY = <<~SQL
select
  id,
  uri as path
from image
SQL

images = {}
client.query(ALL_IMAGES_QUERY).each_with_index do |r, i|
  images[r["id"].to_s] = "http://felixonline.co.uk/" + r["path"]
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

  user.user as text_author,

  GROUP_CONCAT(article_publication.deleted) as deleted

from article
  left join category             on category.id=article.category
  left join image                on image.id=article.img1
  left join text_story           on text_story.id=article.text1
  left join comment              on comment.article=article.id
  left join user                 on user.user=text_story.user
  left join image as user_images on user.image=user_images.id
  left join article_author       on article_author.article=article.id
  left join article_publication  on article_publication.article=article.id

group by article.id

SQL

client.query(ALL_ARTICLES_QUERY).each_with_index do |r, i|

  r["comments"] ||= ""

  md = %w(---)
  md << "title: >\n  #{r["article_title"].gsub(/\s+/, " ")}"
  md << "subtitle: >\n  #{r["article_teaser"].gsub(/\s+/, " ")}"
  md << "date: \"#{r["article_date"]}\""

  unless r["image_path"].nil? || r["image_path"] == ""
    image_url = "http://felixonline.co.uk/#{r["image_path"]}"
    all_referenced_images << image_url
    md << "image: \"#{image_url}\""
    md << "image_caption: \"#{r["image_caption"].gsub('"', '')}\"" if r["image_caption"].to_s.length > 0
  end

  if r["deleted"].nil? || r["deleted"].to_s.include?("1")
    # puts "Marking as Draft: #{r["article_id"]} #{r["article_title"]}"
    md << "draft: true"
  end
  md << "headline: true"
  md << "featured: true"
  md << "imported: true"

  old_path = "/#{r["category_slug"]}/#{r["article_id"]}/#{r["article_title"].downcase.gsub(/\s+/, "-").gsub(/[^\w\-]/, "")}"
  md << "aliases:"
  md << " - #{old_path}"
  md << "comments:"
  comment_count = 0
  r["comments"].split(/\s+\+\s+/).each do |c|
    text = Nokogiri::HTML::DocumentFragment.parse(c).to_s.gsub(/\n+/, "<br>").gsub(/\s+/, " ").gsub(/[^[:print:]]/ , '')
    next if text.include? "[/url]" # bb code
    md << " - value: >\n     #{text}"
    comment_count += 1
  end

  category = r["category"].downcase.gsub("&", "and").gsub(/\s+/, "-")
  # include the text content 'author' - this was causing issues where the publisher would be in the author list
  # now only the article authors are used
  # authors = (r["authors"].downcase.split(",") + [r["text_author"]]).uniq.compact.sort
  authors = r["authors"].downcase.split(",").uniq.compact
  md << "categories:\n - #{category}"
  md << "tags:"
  md << " - imported"
  md << " - image" if r["image_path"] && r["image_path"].length > 0
  md << " - imported_comments" if comment_count > 0
  md << " - multi-author" if authors.length > 1
  md << "authors:"
  authors.each do |author|
    md << " - #{format_username(author)}"
  end
  md << "highlights:"
  md << " - comment" if r["comments"].length > 0
  md << " - longread" if r["content"].to_s.split(" ").length > 1000
  md << " - photos" if r["content"].to_s.include?("image")

  md << "---\n"

  JSON.parse(r["content"])["data"].each do |section|
    if section["type"] == "text"
      md << section["data"]["text"].split("\n\n").map(&:strip).join("\n\n")
    elsif section["type"] == "quote"
      md << "\n" + section["data"]["text"]
        .split("\n")
        .reject { |l| l.strip == "" }
        .map { |l| "> #{l.strip}" }
        .join("\n")
        .gsub(/^> > /, "> ") + "\n"
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
      id = section["data"]["image"]
      caption = section["data"]["caption"].gsub('"', "")
      attribution = section["data"]["attribution"]
      url = images[id]
      all_referenced_images << url

      md << "\n{{< figure src=\"#{url}\" title=\"#{caption}\" caption=\"#{caption}\" attr=\"#{attribution}\" >}}\n"
    elsif section["type"] == "video"
      md << "\n{{< youtube #{section["data"]["remote_id"]} >}}\n"
    else
      pp section
      raise
    end
  end

  filename = "#{r["article_date"].year}-#{r["article_date"].month}-#{r["article_date"].day}-#{r["article_title"].downcase.strip.gsub(/\s+/, "-").gsub(/[^\w\-]/, "")}".gsub(/\-+/, "-")
  puts "Overwriting: #{filename}" if File.exists? filename

  # join lines
  contents = md.join("\n")
  # remove old italics
  contents.gsub!("__", "")
  # trim trailing
  contents.gsub!(/ +$/, "")
  # remove needlessly escaped chars
  contents.gsub!(/\\(\W)/, '\1')
  # remove meaningless new lines
  contents.gsub!(/\n{3,}/, "\n\n")
  # correctly end file
  contents = contents.strip + "\n"

  File.write("content/articles/#{filename}.md", contents)
end

File.write("content/all_referenced_images.txt", all_referenced_images.uniq.sort.join("\n")+"\n")
