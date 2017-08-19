---
title: >
  On rigging the NSS
subtitle: >
  Alexander Karapetian discusses issues regarding the NSS's reliability
date: "2012-02-16 21:59:13 +0000"

# Attributes from Felix Online V1
id: "2203"
old_path: /comment/2203/on-rigging-the-nss
aliases:
 - /comment/2203/on-rigging-the-nss
imported: true
comments:
 - Were working on getting a response from Ipsos MORI theyve been unable to comment so far I have spoken to some people who tested the survey before it was opened and we maintain that they have weak identity verification because of the available inputs the NSS appears to take I filled in my own NSS response using my CID my name and date of birth from the website itself If I had entered another valid CID with the associated name and details I would be able to submit my reponse as another student and they would not be able to tellThe concept of mass impersonation is simply an upscaling and automation which reads an internal valid database Our accusations of weak authentication are justified in that anyone can go and impersonate others right now with their responses being accepted and with Ipsos having no way to tell whether it is actually the student or a third party who respondedIf this is serious journalism you need to interview someone at Ipsos to understand how the survey works and how they ve

# Article Taxonomies
categories:
 - comment
tags:
authors:
 - ak6309

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201202162157-ams111-alex-k-meme.jpg"
image_caption: >
  Not sure if meme or caption. Oh, wait, caption. Oh well...
image_width: "604"
image_height: "453"
image_attribution: ""
image_attribution_link: ""
video_url: ""

# Author metadata
author_id: "ak6309"
author_name: "Alexander Karapetian"
author_image_path: "http://felixonline.co.uk/img/upload/201111032143-sjw209-alex-karapetian.jpg"
author_twitter: "AlexKara15"
author_facebook: "http://www.facebook.com/alexkara15"
author_website_url: "http://alexkara15.wordpress.com"
author_website_title: "alexkara15.wordpress.com"
---

[Our front page story this week](http://felixonline.co.uk/news/2212/flaws-exposed-in-national-student-survey/) uncovered a method students from the Department of Computing found to be able to mass impersonate final year students in the National Student Survey (NSS), effectively skewing the results in favour of Imperial. Of course, the aforementioned technique of programmatically scraping an internal database for the names and CID numbers of final year students may be easy, but is rigging the NSS really that simple?

Let’s look at the information required to fill it in. We need the first letter of the student’s first name, the first four letters of their last name, their CID number and their day and month of birth. Everything but the latter is trivially found in the internal databases described, so a program could theoretically automate scraping this data and autofill the survey to pose as the students. The problem lies with the date of birth, however. If the NSS required the student’s year of birth too, it would be more complex to determine, but not impossible. The [TeachDB](https://teachdb.doc.ic.ac.uk/) database from the Department of Computing gives us the year the student started their course, and we can make a few assumptions to determine their probable age, and as a result, their year of birth.

Of course, this isn’t perfect, and there’s a good chance we’d lose more than half of the dataset of students to impersonate because of it, but that still means a fair number of students are still vulnerable. The crux in our method is that the NSS requires the day and month too, something that isn’t available in (at least) this database. One may trivialise the difficulty of obtaining this information at first, thinking it wouldn’t be too hard to cross reference with Facebook, especially since students leave more information open unwillingly to the Imperial network. I take issue with this suggestion. If you take a look at [facebook.com/events/birthdays](http://facebook.com/events/birthdays) you’ll notice it’s actually quite challenging to obtain birthday information.

Even if one created a [fake Facebook account](http://felixonline.co.uk/news/1139/tricked-by-facebook-fraudster/), added a few people from Imperial as friends until they had enough mutual friends to confidently auto-add most Imperial people, they still wouldn’t get full access to as much birthday information as they’d expect. The problems which may arise here are that cross referencing the Imperial student database against Facebook will not match those who go by nicknames or have different names than the ones they use with friends.

Although the Facebook privacy settings work in the malicious person’s favour, it’s likely this gives a lot of problems and increases the amount of effort required to execute a successful cross reference by an order of magnitude. People think they are being more private if they do not show their age (and therefore their year of birth), but what they do not know is that it is the day and month they need to protect for the case of personally identifiable information for use within the NSS.

An additional barrier is the problem of scraping this data programmatically. One used to be able to see a breakdown of friends’ birthdays by month, but now we get the data categorised as “Today”, “Tomorrow”, “Later This Week” and so on. By making it relative to the current day, Facebook’s made it harder to scrape birthday information, questioning how easy this last nugget really is to obtain.

A further flaw in the NSS system was exposed in the article, showing that regardless of the amount of times a student fills in the survey, only their first response is counted and they are not warned in certain cases that they have already completed it. If this were the other way around, it would be much more devastating. Should the NSS take your last response only and we had a correct automatic program to mass impersonate students, we could run the code on the very last day (if not hour) of the survey, overwriting all previous responses. The fact that it’s the first response, however, provides a workaround by making use of the phone call one receives upon forgetting to do the survey.

If you’ve not completed it and you don’t receive a phone call, it is possible you have been impersonated. If a program can use a database to do it, don’t hesitate to think your friends can’t. Yes, I’m looking at those of you who’ve posted pictures of your ID cards online on Facebook or Twitter, exposing your CID numbers on potentially the same page your date of birth resides. Don’t help usher in an era of NSS trolling.

So even if we get around all this, there’s one more obstacle. Not everything in the survey is multiple choice, there are some boxes which require text input. Unless we define unique responses for each student, there’s a fair chance the NSS engine will detect patterns and be alerted to suspicious activity. For a malicious programmer with enough motivation, it’s not too infeasible, however.
> This discovery completely undermines the NSS as a reliable and trustworthy source
> Tom Wilshere, Computing Dep Rep
I contacted the Deputy President (Education) Jason Parmar, who told me that even so, it’s “widely accepted as the “current” measure for student satisfaction”, and that “this may change in the next decade”. Tom Wilshere, Computing Department Representative, believes “this discovery completely undermines the NSS as a reliable and trustworthy source of information for ranking satisfaction in universities”, and that “it seems ridiculous that students (or indeed universities) could easily spam the system to improve the results for their departments”.

With the commonplace nature of automated spam e-mailing systems with intelligent text generators that can pass the Turing test and deceive humans into thinking they are human too, it’s not farfetched to wonder whether students at this university or elsewhere have taken advantage of the exploits defined above. If executed right, they’d potentially go undetected and possibly get away scot-free…
