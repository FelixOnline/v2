---
title: >
  Behind the scenes at Felix Online
subtitle: >
  A look at the technologies that helped create and run Felix Online
date: "2011-03-27 11:21:00 +0100"
author_id: "jk708"

# Attributes from Felix Online V1
id: "1130"
old_path: /tech/1130/behind-the-scenes-at-felix-online
aliases:
 - /tech/1130/behind-the-scenes-at-felix-online
imported: true
comments:

# Article Taxonomies
categories:
 - tech
tags:
 - tech
 - imported
authors:
 - jk708
highlights:

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/"
image_caption: >

image_width: ""
image_height: ""
image_attribution: ""
image_attribution_link: ""
video_url: ""
---

So the new Felix website was launched just over a month ago and I hope that you all have enjoyed the change. Now that my exams are finished I thought that I would go over some of the tools and technologies that we used to create the site and what we are planning on doing in the future. Oh and I warn you that this is going to get quite technical!

Right well to start things off the site is built using the big four in web lanuages: HTML, CSS, Javascript and PHP. These languages are pretty standard in the world wide web and you can bet that the majority of sites you come across will be built using them. To break things down each language looks after a specific part of each part of the website.

First off PHP is a 'server side' language which basically means that everything that it is programmed to do is run on the server before your browser recieves it. We use PHP to dynamically generate content whenever you visit a particular article or page. For example any article url will contain in it a string on numbers that represents the article id. What PHP does is grab that id and talks to our database (which contains all the article info and content and is run in MySQL) to retrieve all the data relating to that article. This is then outputed into a HTML document and that is what is sent to your browser to be displayed. The beauty of PHP is that it means that coding a website is incredibly easy since you don't have to create a new document for each article or page on the site. PHP generates that all for you on the fly!

Next up is HTML. This forms the structure of the website and is what all websites have been run off since the dawn of time (read: internet). You can think of HTML as the scaffolding that holds the site together and makes sure all the elements are in the right part of the page. It also adds elements such as input boxes and buttons that can be used to interact with the site. For example the navigation bar that is on every page is simply an unordered list tag which simply denotes a box in the page. Now if I stopped here then the site would be functional but it wouldn't look very nice! That is where CSS comes in.

Before the arrival of CSS (cascading style sheet) the only way to make a website look appealing was to use inline styles. This meant that each element on the webpage would need a specfic style hard coded into its tag. Needless to say this lead to messy and confusing websites especially if you want to add multiple styles to each element. CSS changed all that. With CSS all that you need to do is give an element an id or class name and then you can target it with CSS. This seperation of structure and styling means that you can change the underling HTML structure of a site without changing the styling or the other way around. This would do exactly the same as the above but it means that if you wanted another red div somewhere else you could just give it the id of "red". You will be hard pressed to find a website now days without a seperate style sheet (departmental websites aside) as it simplfies development hugely allows you to be more creative in your designs.

So last but not least we come to Javascript. Now JS is a relatively new commer to the internet but it is rapidly becoming an indispensable part of any designers kit, especially with easy to use libraries such as jQuery. What Javascript can do is to animate and change any part of a website in the browser alone. So instead of having to refresh your page, and so ask the server to change it for you, Javascript can change it all for you with a hitch just in the browser. Javascript is how all interactive elements work, from drop down menus in navigation bars to the login box on Felix Online to even how Gmail can let you read your emails without constantly refreshing the page. It is an incredibly powerful tool that can greatly enhance any website and make the experience much more enjoyable.

So there you go, that is very breifly how Felix Online works. I will share links to some indispenable resources that helped me immensly in creating the site but first off I want to talk about some features that we are planning on adding and I would love to get your feedback.

The first priority is to make a mobile version of the site which is on its way soon. Also I am planning on making an API for the site so that anyone with any knowledge of mobile app development can make a Felix app! Please contact me if you are at all interested in that kind of thing.
