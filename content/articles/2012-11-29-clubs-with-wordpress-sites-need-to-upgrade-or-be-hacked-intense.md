---
title: >
  Clubs with Wordpress sites need to upgrade or be hacked... intense
subtitle: >
  In short: upgrade your Wordpress plz. kthnxbai.
date: "2012-11-29 21:55:30 +0000"
# Attributes from Felix Online V1
id: "2983"
old_path: /news/2983/clubs-with-wordpress-sites-need-to-upgrade-or-be-hacked-intense
aliases:
 - /news/2983/clubs-with-wordpress-sites-need-to-upgrade-or-be-hacked-intense

# Article Taxonomies
categories:
 - news
tags:
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

# Author metadata
author_id: "tna08"
author_name: "Tim Arbabzadah"
author_image_path: "img/upload/201302252001-tna08-tim-editorial-rgb-jpg.jpg"
author_twitter: "timarbabzadah"
author_facebook: "https://www.facebook.com/timarbabzadah"
author_website_url: ""
author_website_title: ""

comments:
 - Im not using SSL as some form of silver bullet that will magically solve all these issues its part of a number of things I am doing Dont worry Im not going to sit in my chair and relax nowAn added benefit of mandating SSL will hopefully be realised once I get the necessary approval from the powers that be but youll hopefully find out about that one soonIts too easy to hide behind the whole OMG USE SSL thing just because one of the Ss stands for secure Most browsers wont warn about iframes or crossdomain AJAX requests particularly if the user has ticked the dont warn me again boxIts no substitute for writing secure code and I would have thought that Wordpress as an open source communityreviewed project would be far more resilient to attack than some contributed code by Imperial studentsI have seen code written by the current Union President and exSysadmin that has made me feel physically sickI say you force everyone to use PDO prepared statements
imported: true
---

Imperial clubs with old Wordpress sites are vulnerable toattack from hackers.

A number of the Clubs and Societies at Imperial College Union have been running outdated versions of Wordpress, which leaves them open to attack. The problem is easily fixed by simply keeping installations up to date when asked to update (those annoying “UPDATE NOW OR ELSE” boxes).
 The actual number of clubs that have been attacked seems to be small. The Union Sys Admin, Philip Kent, said that they are “making sure everyone updates so it doesn’t happen again.” He added that all old Wordpress sites were not necessarily attacked. He added that Wordpress is not the “only expoitable pieve of software” saying that “other software has security holes too, but we are targeting Wordpress on the basis that it is widely used on club websites, and it has a poorer track record for being secure [than other software]”.

At the moment, it would appear that the content of the websites were altered but no sensitive information was compromised.

The problem will be minimised by immediately turning off a Wordpress that is found to be outdated. It is only re-instated when it has been declared clean and the club has upgraded the software. Since starting the weekly notifications a large number of clubs have already upgraded their installations and Kent says the Union are “well on our way to fully resolving this problem”.

Kent said that they have “switched every site (except those which use custom domains) over to use SSL for all access; which, while this will not stop these kinds of attacks, it will prevent some of the results of what is done to people’s websites. For example, on one website, the attackers modified the templates so that it displays what is called an iframe (embedding a website inside a website). Because we now run under SSL, unless the website inside the iframe is also running under SSL, web browsers will often complain or refuse to show the contents of the frame, which may prevent showing of undesirable content. The same is true if they try to load external images or JavaScript.”

They are also working on a way to make upgrading easier, but are yet to complete it. There is a guide on the [SysAdmin website](https://union.ic.ac.uk/sysadmin/), which describes how to upgrade
