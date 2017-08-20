---
title: >
  The BlackBerry Crumble
subtitle: >
  Pinpointing the causes of the messaging service crash
date: "2011-10-20 21:25:19 +0100"

# Attributes from Felix Online V1
id: "1563"
old_path: /tech/1563/the-blackberry-crumble
aliases:
 - /tech/1563/the-blackberry-crumble
imported: true
comments:

# Article Taxonomies
categories:
 - tech
tags:
 - tech
 - imported
 - image
authors:
 - cb908
 - felix
highlights:

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201110202224-felix-blackberry_logo.jpg"
image_caption: >

image_width: "700"
image_height: "207"
image_attribution: ""
image_attribution_link: ""
video_url: ""
---

As I’m sure many of you know, [Research In Motion](http://www.rim.com/) last week suffered its biggest ever service disruption, with millions of customers across the globe affected. Users lost access to push email, BlackBerry Messenger, Facebook and Twitter applications, and even in some cases their internet access. For a company that built its reputation on many of those features, and indeed, the stability and reliability of those services, I’m sure it’s a week the executives would rather forget.

While over here there were probably many people rejoicing that the “riot-inducing” messaging service was down, the consumers were left wondering why. Even now, BlackBerry have not exactly been forthcoming on the details, saying only that their failover, well, failed.That is, for some reason their main server network was down and their backup infrastructure didn’t manage to take over properly. Along with that, all we do know is that the problem occurred at their datacentre in Slough.

There is speculation abound on the internet, as always, as to why this happened in the first place. Some say the cause was an update to the original server (in which case a manual switchover should have taken place), some say it was a bug in one server. Whatever the cause, Research In Motion claim the failover switch had been tested, but it seems not rigorously enough. Regardless, the issue here is clearly that of not enough redundancy.

While this is speculation, it doesn’t seem unreasonable to assume that this failover switch and this network of servers in Slough are of utmost importance given the number of BlackBerry users that were affected in the first instance. Hence, it would make sense to have not just one set of backup servers, but two or more. Indeed, it has been said in the past that maintaining scalability of their infrastructure has not been Research In Motion’s top priority. This would be fine if their customer base was sticking around a fairly stable figure, but that’s not the case. While their share prices may have been dropping recently, their market share in UK mobile handsets has been on the rise, and last year they had a massive increase in year-on-year sales. The fact that they’ve just released a new fleet of devices is unlikely to reverse that either.

But let’s say that this was unavoidable, that no matter what, the datacentre was always going to fail. Then we still have the issue of why the problems spread across theworld and lasted for a few days. At the time of the failure, emails weren’t being pushed to devices, BlackBerry Messenger wasn’t working, etc. So it seems, with nothing to lose, they may as well have ‘disconnected’ the centre, whatever that involved, wired up the backup server as the active one, and started again.

Perhaps the problem could be pinpointed to the backlog. Considering that these servers apparently serve Europe, the Middle East and Africa, even a few minutes of downtime would cause a massive backlog, which may have been too much for the secondary servers to cope with. Maybe that server then crashed, and all traffic was rerouted to another datacentre. Which then crashed. And so on. But again, this seems unlikely, considering the time delays between each affected region. Whatever the cause, it’s clear the company needs to re-evaluate its infrastructure. If this were to happen globally on the BlackBerry Enterprise Servers, I think the company would struggle to recover.

However, I don’t want this to seem like an attack on BlackBerry. I love the devices, and actually wasn’t that angry during the outage. But many were, and just because I wasn’t enraged doesn’t mean I don’t believe it should’ve have happened. At least, on a positive note, they were slightly better at keeping customers informed than they were at working on the problem. Also, they are offering reimbursements in the guise of free apps to everyone, which is better than nothing.
