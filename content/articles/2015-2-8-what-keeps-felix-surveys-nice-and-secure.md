---
title: >
  What keeps Felix surveys nice and secure?
subtitle: >
  People ask what keeps our surveys, such as the Felix Sex Survey, secure and private. The Felix Team behind the surveys explain how the magic works.
date: "2015-02-08 21:55:20 +0000"
id: "5211"
old_path: /news/5211/what-keeps-felix-surveys-nice-and-secure
redirect_from:
 - /news/5211/what-keeps-felix-surveys-nice-and-secure
category: news

headline: true
featured: true

image_path: "http://felixonline.co.uk/img/upload/201502082240-ps3110-privatis_stay_safe_online.jpg"
image_caption: >

image_width: "0"
image_height: "0"
image_attribution: ""
image_attribution_link: ""
video_url: ""

author_id: "ps3110"
author_name: "Philippa M Skett"
author_image_path: "img/upload/201501201845-ps3110-screen-shot-2015-01-20-at-18.45.33.png"
author_twitter: "sketterss"
author_facebook: ""
author_website_url: ""
author_website_title: ""

comments:
imported: true
---

Every year people ask how Felix keeps the details you give us in our surveys private and secure. To reassure all our readers, we now reveal how it works.

__Here's what we do to keep your response secure...__
 - Your survey response is stored containing only the information you give us, plus a special check value. This does not include your login or your password.
 - This means that you have complete control of what you share.
 - Our special check value tells us if the department you tell us you are in is the same as the department the College directory says - we don't store the department College says you are in - simply just a true/false value. If you don't share your department, we don't even do this check!
 - We ask for your College log in to make sure you are an Imperial student - we don't want the data to contain responses from people we aren't interested in.
 - We also use it to make sure you haven't filled out the survey before. When you submit your response, we use a process called 'hashing' to store your username in a way we can't read. The way we hash your username makes it very hard, if anyone was to have the data, to identify who filled out the survey - using a process called salting, the computational time necessary to try and guess a username is increased.
__Can we (or anyone else) link college usernames to responses?__
 - This hashed username is stored separately to your response - and there is no link in any way between the two storage areas. We store the responses in the order they were created, and the usernames in an arbitrary order - so it isn't even possible to match the first hash to the first response.
 - We've tested and tested our software repatedly to ensure there are no security flaws with it. Our tool to export the responses is password protected so only Felix staff can access it - using our College login details. And we've even made sure that people can't craft special requests to the survey software to get it to leak the responses - we've protected against what is known as 'SQL Injection'.
 - Doubt anything we say? We've open sourced our survey software - and you can see the source code yourself [online](https://github.com/FelixOnline/FelixSurveys).
 - Think we missed something out? Just let us know - we are committed to doing our best to keep your data secure.
__Here's what the Union SysAdmins do to keep your response secure...__

We host our survey software on the Union's club webserver, and a dedicated team of volunteers do their very best to make sure nobody can access anything they shouldnt. The SysAdmin team:
 - Ensure all the software on the webserver has the latest bug and security fixes installed.
 - Protect every section of the database with a different password, so no club can access the data of any other club. In fact, even the Felix Online website can't access the survey software data!
 - Completely isolate club websites - so only a very select number of people from the committee of each club can access the webserver, and only to the folders of their own clubs. That way, only the Felix Deputy Editor can access the survey and its configuration files - nobody can steal the password to access the database!
__Concerned about your response? Or worried we won't look after it?__

We have always, and will continue to do our best to keep your entry to any and all Felix surveys nice and secure. But we are always on hand to listen to your concerns and put your mind at ease. Our measures have ensured that nobody can access your responses except a very select few, and even in the fantastically unlikely event someone did get the data, there is nothing they would be able to access which your Felix survey analysis team wouldn't be able to.

Get in touch if you have any concerns: [felix@imperial.ac.uk](mailto:felix@imperial.ac.uk).

And, even better - fill out our [__Felix Sex Survey__](http://www.felixonline.co.uk/sexsurvey) now!
