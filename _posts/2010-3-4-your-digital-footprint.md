---
layout: post
title: >
  Your Digital Footprint
subtitle: >
  A look at the information our browsing gives away and how we're not as anonymous as you might think
date: "2010-03-04 12:33:34 +0000"
id: "117"
old_path: /tech/117/your-digital-footprint
redirect_from:
 - /tech/117/your-digital-footprint
category: tech

headline: true
featured: true

image_path: "http://felixonline.co.uk/img/upload/201003041217-srg03-Hacker.jpg"
image_caption: >
  
image_width: "1698"
image_height: "1131"
image_attribution: ""
image_attribution_link: ""
video_url: ""

author_id: "sjw209"
author_name: "Simon Worthington"
author_image_path: "img/upload/201102092131-jk708-FelixPro.jpg"
author_twitter: ""
author_facebook: ""
author_website_url: ""
author_website_title: ""

comments:
 - So how anonymous is this comment
imported: true
---

It's a common misconception that when you're on the Internet, you're anonymous. Surfing along, happily not giving away any personal data; it's hard to imagine how you could be recognisable amongst the vast sea of people browsing online. In fact, your computer gives away a wealth of information about you to every single website you visit. For web developers, this data can be invaluable in making interesting, dynamic websites, but it can also be used to build up a picture of who you are and where you come from.

The first major source of this information is your browser. The actual data available varies from browser to browser, but most of them transmit your operating system, the resolution of your screen and what fonts and plug-ins you have installed. This might not seem like much, but in fact it's enough to differentiate a single person from more than half a million others. Panopticlick (http://panopticlick.eff.org/), an experiment started by the Electronic Frontier Foundation, aims to see just how much information you give away as you surf. Information about your browser is collected and compared to others they've already seen, and how traceable you are online is calculated. To the shock of many, it is often the case that a user is completely unique amongst the 640,000 or so entries, being identifiable from browser information alone.

All this would not be so bad, were it not for the fact that web sites can also tell where you live. An IP address is a unique number assigned to you when you connect to the Internet through your ISP. Web servers use your IP address to route 'packets' or data from a website to you, but websites can also detect and use your IP address to find out information about you. Using a look-up service, your IP address can tell a website your approximate location, accurate to the town or village you live in. In special cases like universities this can be even more accurate. For instance, anyone using a college connection broadcasts that they are connected at Imperial College London. Location information can also be gained using a relatively new technology called the 'Geolocation API'. Websites can request location data from the browser, which provides the exact position of the user right down to the actual street address they currently inhabit. Although this information is only meant to be sent if the user gives their consent, with more and more location-aware browsing, one day it may be sent automatically.

Even though a lot of information is provided to web sites, up until now it has been impossible to actually differentiate between individual users of one computer who browse a site. After all, the computer looks and runs the same no matter who is using it. The solution to this came from a company called Scout Analytics, who have used 'typing cadence' to tell the difference between individuals online. When you type, you have a characteristic rhythm and pace, characterised by the time taken to move between keys and how long you hold a key down for. Scout Analytics have developed a method to collect these timings and have reported the ability to detect individual users just by the way they type in their username and password. The algorithm has already been successfully used in a trial to stop multiple users accessing expensive online services for which only a single license has been purchased.

For those of us who are now considering hanging up their keyboards for good, there are a few things that can increase your level of anonymity online. The Panopticlick experiment has shown that fonts and plug-ins are one of the biggest differentiators between browsers, so not installing custom fonts or plug-ins will help you be less unique. Another more drastic option is to disable JavaScript in your browser, which is how websites get most of their information about you. Although it is an easy way to reveal less about yourself, most modern websites use JavaScript in abundance and so you may find many things stop working properly when you make the change. Your final chance is to browse through a proxy, an online server that routes your entire Internet traffic through itself to hide your actual IP address from websites, or make use of a privacy network called TOR, more information on which can be found at www.proxy.org or www.torproject.org respectively.
