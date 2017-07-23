#!/usr/bin/env ruby

require "digest"

def generate_author_id(email)
  email.split("@").first + "-" + Digest::SHA2.hexdigest(email).slice(0, 5)
end

def generate_content(file_name, email)
  <<~MD
    ---
    name: #{email}
    email: #{email}
    twitter: #{email}

    permalink: /author/#{file_name.split("/").last}

    layout: author
    ---
  MD
end

author_emails = []
Dir.glob("_posts/*").each do |post|
  if email = File.read(post).scan(/author: (.*)/).first
    author_emails << email.first
  end
end

author_emails.uniq.each do |email|
  filename = "_authors/#{generate_author_id(email)}.html"

  if File.exists?(filename)
    puts "#{email} already has an author file at #{filename}"
  else
    content = generate_content(filename, email)

    File.write(filename, content)
  end
end
