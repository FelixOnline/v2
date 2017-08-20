---
title: >
  Imperial students win inter-University Hackathon
subtitle: >
  4 Imperial students smash the competitions @ HackKings
date: "2014-02-28 07:10:16 +0000"
author_id: "jal08"

# Attributes from Felix Online V1
id: "4440"
old_path: /news/4440/imperial-students-win-inter-university-hackathon
aliases:
 - /news/4440/imperial-students-win-inter-university-hackathon
imported: true
comments:
 - Correct link is httplivmaphackappspotcom btw

# Article Taxonomies
categories:
 - news
tags:
 - news
 - imported
 - image
 - imported_comments
authors:
 - jal08
highlights:
 - comment

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201402280721-jal08-news_livmap.png"
image_caption: >

image_width: "0"
image_height: "0"
image_attribution: ""
image_attribution_link: ""
video_url: ""
---

A team of 4 Imperial students last week’s student hackathon hosted at Kings University. The 4 computing students, Andrei-Loan Cioara, Nandor Licker, Tomas Virgl and Patrick Chilton took first place in the UK’s first inter-university hackathon, HackKings, where they triumphed over teams from Cambridge, UCL, Durham and Oxford.

The teams were challenged to “create something cool in 24 hours” and the top three ideas won free mentoring from Steer.me and a chance to pitch to investors for £15,000.

_Felix_ spoke to the winning Imperial team, who told us:

“We decided to write _LivMap_ as we found there was a lack of tools for finding a good area to live in. You can find separate maps of rent, crime, entertainment, travel, etc, but there was no map that showed everything according to your preferences. This is exactly what _LivMap_ is: you can specify how much you value different metrics (commute time to a given place, crime rate, number of pubs), and it instantly shows you a map with rent adjusted for the other factors.

The competition was fun and well-organized, though as usual at Hackathons we were completely exhausted by the end. We weren’t aiming for the prize (we all have jobs/internships lined up), we just wanted to build something technologically interesting and useful, so we were blown away when they called our name.

Technologically speaking I think our solution was more sophisticated than most of the other entries: the whole map is computed in real time on the GPU using _WebGL_ and is done mainly on the user’s computer. We also have a server written in _Go_ on Google App Engine that caches requests to the various services we used (_TFL, Yelp_), so that we don’t produce too much traffic. Static information (such as crime data) was precomputed and downloaded for the whole of London, which took surprisingly little space.”

The LivMap app is available at [livmaphack.appspot.com](http://livmaphack.appspot.com) although it might not work on at a reasonable speed on all computers.

Students from St. Andrews’ took second place with ‘Streamy’, a crowdsourced journalism website tgat allows users to broadcast current events to viewers through their browser.

Third place went to another team of Imperial computing students including: James Carr, Ben Chin, Ainsley Escorce-Jones, the creators of GitSquad. The concept of GitSquad is a portal that bridges the gap between learning how to program and contributing to open source projects. The web application provides an environment where experienced developers can interact with newcomers to the programming community.

GitSquad was created with the python based Django framework, using a Redis database, the Celery messaging queue with a Redis broker and the online Pusher messaging service.

The ‘Pebble’ prize was won by the ‘ReachHome’ team from King’s College London who created an app for the Pebble smart watch that informs the user of the exact time they will be expected to walk through their front door, based on live public transport data.

The event was judged by a panel of experts from Codecademy (an online learning platform for programming), Facebook, Tech City, Student Upstarts, Index Ventures and Steer.me and organised by students from King’s to promote the importance of technology and software.
