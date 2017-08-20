---
title: >
  How to get into Ghostblogging!
subtitle: >
  Want to set up Ghost? Joe shows you how...
date: "2014-05-02 01:46:16 +0100"

# Attributes from Felix Online V1
id: "4555"
old_path: /tech/4555/how-to-get-into-ghostblogging
aliases:
 - /tech/4555/how-to-get-into-ghostblogging
imported: true
comments:

# Article Taxonomies
categories:
 - tech
tags:
 - imported
 - image
authors:
 - jal08
highlights:
 - longread

# Homepage control params
headline: true
featured: true
image: "http://felixonline.co.uk/img/upload/201405020246-jal08-tech_blogging.png"
image_caption: ""
---

__Choosing a platform__

As soon as I had finished installing Ghost on a cloud virtual server, my good friend Luke G-B pointed out the existence another awesome blogging/CMS platform called WagtailCMS.

WagtailCMS is a Django-powered Content Management System created by Torchbox, a web design consultancy based in Oxfordshire. The project homepage also features a case study of the platform in use by our neighbours at the Royal College of Art (RCA).

The platform is completely Open Source, with the source code available on Github along with a demo website and a handy tutorial by Serafeim Papastefanos.

WagtailCMS requires a lot more configuration and customisation than Ghost in order to be useful. As well needing to define page types before being able to create an article, the platform also comes without any packaged style sheets, in fact you have to write the templates for each page type from scratch, which means that you can create a fantastically complicated blog with a lot of planning, but also have the chance to customise the application to your needs, once you understand how to use the system.

While using the WagtailCMS platform requires a large amount of specialised technological expertise (if you don’t even know what Django is - apart form an awesome modern python-based web framework), with the right frame of mind, and an experienced Web Designer you can create works of art (have a look at the RCA website).

Meanwhile, for those of you with a bit of server-admin know how, or more time than you know what to do with, the Ghost platform is fairly easy to set up, and is ready to be used straight after installation.

__Why Not Wordpress ____or tumblr?__

I freely admit to being a bit of a Wordpress snob, it just seems so commonplace. While I must concede the fact that it is another extremely powerful blogging system with a friendly User Interface (UI), I think it has become the MySpace of the blogging world. There are so many plugins that the Wordpress (WP) platform has become a bit too cluttered. On an average WP blog, a visitor can be easily distracted by the page layout, the interesting widgets on the sidebar (including a count of the tens of people who have recently visited from across the world) and the ability to log in and/or leave a comment.

Meanwhile I feel that Tumblr (or Yahoo for the commercially conscious)blogs are too sporadic in nature. They seem to be almost Twitter feeds made permanent, a few fleeting thoughts and a large pool of pictures poured into a disjointed list of posts. I am aware that David Karp, the 27 year old founder of Tumblr wished to make a blogging system with a difference, and he did achieve his aim, however I believe that it fails to meet the needs of the slightly more serious or mature blogger.

The reason why I am such a fan of Ghost (so far) is its simplicity, clean design and Open Source nature. Any soul with a $5/mo (USD) server, or a kind friend (with a server) can easily host their own personal Ghost blog on a domain of their choice.

Alternatively, you can pay $5 a month to have your blog hosted by Ghost themselves, which roughly adds up to £36 per year.

The cost is more than the cost of a free WP blog, but this basic plan does boast

“... premium email support, unlimited features, unlimited users, unlimited themes & apps, and support for custom domains.”

__How to install Ghost__

If you choose to go ahead with installing Ghost on a server, you should follow the easy official instructions available on the Ghost installation page. The platform runs on the modern Node.js web framework, so be ready to install it.

Tip: Use the “nave” virtual environment manager for nodejs in order to keep your Node.js project dependencies separate. I’m sure you don’t want to break an older Node.js app by upgrading your currently installed version :)

After following the fairly simple installation guidelines (make sure you pay special attention to the version of Node.js the project depends on - see packages.json file), the new blog will be available on port 2368 of your new server (also don’t forget to change to change the host to host: ‘0.0.0.0’ in config.js otherwise you won’t be able to view the blog from outside the host server - which is only useful if you have a VPN via the server and want to keep your blog private).

Logging on to http://your-domain-or-ip-address-here:2368/ghost brings you straight to the login page of your blog. This allows you to set up a user and start blogging!

The blog posts are written in markdown, which is a fairly simple text markup (oh the irony) language (I’ve just learned it) and the writing interface is really easy on the eye and simple to use. The blog comes with a standard theme that can be easily customised or replaced with a pre-built theme.

In order to get your blog ready for the production environment, the Ghost team suggest using the Nginx web server solution, rather than running the Node.js development web server. I am still on the Node.js web server (the application is running in a “screen”) however, I have also used the apache http\_proxy module to route all requests for port 80 to port 2368(it took 5 minutes and Google) which means that my blog now serves as the homepage of my domain.

Finally, as an extra step, if you’d like to receive emails from the blog, (especially if you’d like to be able to reset your password one day), I’d also recommend following the instructions to set up an email address for the blog to send notices from. Gmail is particularly well supported, so the procedure should be simple.

Tip: Remember to restart the web server application after changing the website’s configuration files on the server in order for the new settings to come into effect!

__Time To Start Blogging__

So, Congratulations! If you’ve followed each step in the article (and the linked instructions) you should now have a fully functioning (and slightly hipster) blog to amaze your friends, or hide your deepest thoughts.
