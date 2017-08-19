---
title: >
  The power behind the web
subtitle: >
  Jonathan Kim discusses the election site’s technologies
date: "2012-03-08 21:36:28 +0000"
author_id: "cb908"

# Attributes from Felix Online V1
id: "2326"
old_path: /tech/2326/the-power-behind-the-web
aliases:
 - /tech/2326/the-power-behind-the-web
imported: true
comments:
 - Nice article and great job on this years election stats page for the record although Im the first to admit last year was a disaster we were at least generating the stats once every 10 seconds and serving a static copy to each request rather than generating per request as this article says from about 20 minutes into voting when Mckee called me to tell me he and Chris Darby had melted dougal anyway PCheers Chris I didnt realise that you had changed it to a static version so apologies for the mistake

# Article Taxonomies
categories:
 - tech
tags:
 - tech
 - image
authors:
 - cb908
highlights:
 - comment
 - longread

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201203121347-cb908-elections3.png"
image_caption: >
  Prepare to see some funky stuff going on at the stats page
image_width: "3255"
image_height: "1241"
image_attribution: ""
image_attribution_link: ""
video_url: ""
---

The web is changing. Sites such as Facebook and Twitter keep you hooked by constantly updating in real-time any activity that happens in your social network. This is incredibly powerful and last year the Union used this to create the incredibly successful real-time voting statistics page. Along with a lot of people, I was glued to the page during election week, transfixed by the moving bars and animated numbers that were constantly changing as students placed their votes. Technically however, it was a far from perfect system that caused the entire union server to grind to a halt. This year Paul Beaumont came to me with the suggestion that I have a go at improving it, and I would like to share some thoughts on how the technology behind the new system is shaping today’s world wide web.

Traditionally, websites have been a very simple affair. Servers, essentially large computers, sit in some dark damp basement waiting for someone to browse to the site that they host and, when this happy event occurs, present to the browser all the information that it needs to display the site. Once this is finished the relationship between the browser and the server ends until the browser navigates to another page. This system works very well and is all that static websites, such as Wikipedia, BBC News and Felix Online, need. However web developers wanted more. They wanted websites to be more dynamic. They wanted the website to update with new content without users having to continually click the refresh button. In short they didn’t want the relationship between browser and server to end once the site is displayed.
> ...it lets us forget about older browsers (I'm looking at you, Internet Explorer)
One solution is to use JavaScript. JavaScript is a scripting language that all modern browsers support and is almost universally used to provide a more interactive and dynamic experience for users. It can also be used to fetch information from the server through a group of technologies collectively called AJAX. This allowed developers to fake a real-time connection by making a browser regularly ask the server for new information and so keep the page up to date without refreshing. This is the system that the previous elections stats website used, and although it works it has its problems. First of all it doesn’t change anything about how the server is operating since the JavaScript is simply doing what an overzealous user could be doing by refreshing the page manually all the time. Secondly it can result in lots of unnecessary requests as the data may not have changed since the last request. Finally, and more practically, once this is set up the developer has no control about when the user will request this data and so with a large enough active users, requests will come in all the time. This can be incredibly taxing for a server as it will need to deal with all these requests one at a time and it can amount to the same effect as a Denial of Service Attack which is usually employed by hackers wanting to overload a website so it can longer function (groups such as Anonymous use this type of attack to bring down large corporate websites). This can be further exacerbated if the information that is being requested is complex and takes time to generate, which was the case for the elections stats last year and the reason it brought the union server to its knees.

Obviously simply using AJAX is not a good solution in the long term and so we had to turn to new technologies to implement a true real-time connection between the browser and server. One such technology is called WebSocket. WebSockets allow a server and a browser to open up a persistent connection through which information can be sent by either party. This allows the server to push information to all browsers whenever there is a change as opposed to browsers constantly asking for new information. Through this method the server controls the rate at which users receive new information.

Now to be a bit more technical (if you’ve got this far then you probably want to know how it was done). We are using some cutting edge technologies that make it even easier to implement real-time connections – specifically Node.js and Socket.io. Node.js is a new server side platform that runs JavaScript on the server using Google’s V8 runtime engine (it powers Chrome) and it is blazing fast! It is completely asynchronous, lightweight and currently the darling of the web development community. I could go into Node.js a lot more, but that will have to be a topic for another article. Socket.io is where the magic happens. As it states on its website “It’s care-free real-time 100% in JavaScript”. Since WebSockets aren’t supported by all browsers (I’m looking at you Internet Explorer) to enable real-time communication we need to fall back to older technologies. Socket.io does this all for us by supporting all browsers from IE 5.5 onwards, while giving a consistent development interface. Essentially it lets us forget about trying to support old browsers and just concentrate on writing cool applications. Together, Node.js and Socket.io, allow us to very quickly implement an interactive and real-time experience for the Union stats.

As a small test of how it all might work, a small box was added to the sidebar that shows how many candidates are standing and how many seconders there are. This is updated (using Node.js and Socket.io) every second and so far everything seems to be running smoothly! At all times the server, not the browser, is in control of how often the statistics are updated and this means that there is only one request at a time (from the server) as opposed to multiple requests from different browsers. In the unlikely event that the server is overloaded, I can dive in and change the frequency at which it updates to prevent a recurrence of last year’s crash.

WebSockets, and the advent of the real-time web, are a fundamental change in how the web works. Instead of sites being static and entirely dependant on user interaction to update, they can now just sit there and new information is fed directly to them. It makes things like online chat trivial and sites such as Facebook and Twitter even more addictive. I’m sure you will see what I mean when the stats page launches!
