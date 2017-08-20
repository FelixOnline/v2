---
title: >
  Flaws exposed in National Student Survey
subtitle: >
  Data could be readily skewed in Imperial's favour
date: "2012-02-16 22:19:34 +0000"

# Attributes from Felix Online V1
id: "2212"
old_path: /news/2212/flaws-exposed-in-national-student-survey
aliases:
 - /news/2212/flaws-exposed-in-national-student-survey
imported: true
comments:
 - value: >
     Settle down gentlemen.,This, we do not yet know. We're working on obtaining an official response from the Department of Computing and our DPE,Is an automated approach realistic? Would ipsos not cotton on to 160 surveys filled in within 5 minutes of each other, all with identical results and all from the same ip etc? I accept it's possible to emulate human behaviour but it does seem an extreme thing for an institution to do rig the NSS. After all, college wants cromulent data work from.,Commentary on rigging being a tad more difficult than it sounds: <br>http://felixonline.co.uk/comment/2203/on-rigging-the-nss/,Good article and comment piece (http://felixonline.co.uk/comment/2203/on-rigging-the-nss/) Alex. It raises serious security concerns. <br> <br>Even though it may be more difficult that expected to create an automated hack of the NSS I am concerned that the most obvious method would be the most effective, manually. If each one is entered individually it'd be more difficult to trace, with the malicious person able

# Article Taxonomies
categories:
 - news
tags:
 - news
 - imported
 - image
 - imported_comments
 - multi-author
authors:
 - ak6309
 - felix
highlights:
 - comment

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201202201456-felix-nss.jpg"
image_caption: >
  Information gained from the TeachDB database includes name, CID, and year
image_width: "5184"
image_height: "3456"
image_attribution: "Alexander Karapetian"
image_attribution_link: ""
video_url: ""
---

Students from the Department of Computing have teamed up with Felix to uncover methods which can be used to skew data being submitted to the [National Student Survey](http://www.thestudentsurvey.com/) (NSS) in favour of Imperial College.

The flaws rely on the availability of basic information required to pose as another student in the survey, and the process can be automated to mass impersonate entire departments. The NSS is a survey for final year students conducted by [Ipsos MORI](http://www.ipsos-mori.com/), the second largest market research organisation in the UK, on behalf of the [Higher Education Funding Council for England](http://www.hefce.ac.uk/) (HEFCE). The results from the NSS have been used heavily to determine student satisfaction levels and affect university rankings.

Entering the NSS via [thestudentsurvey.com](http://thestudentsurvey.com) requires the responder to enter the institution they are currently enrolled at, their student number (CID in Imperial’s case), the first letter of their first name and the first four characters of their last name. Along with merely the day and month (not year) of birth, this information is all that is necessary to undertake the survey. Upon entering these details, the NSS claims to “check [them] against the National Student Survey 2012 target population” for eligibility.

Little do they know many universities and their departments provide databases of students with their associated information to enrolled members. Take our [Department of Computing](http://www3.imperial.ac.uk/computing/)’s (DoC) [TeachDB database](https://teachdb.doc.ic.ac.uk) for instance. Students from this department can log in using their basic credentials and are faced with a full search engine for students, staff, degrees, courses, UTAs, GTAs and books. Think in terms of the database Mark Zuckerberg used to grab students’ pictures and start Facebook back in Harvard.

Felix logged into the DoC TeachDB network and performed a search for all students in their fourth year. No other details were required and we can confirm wildcard searches such as these are allowed. What resulted was a list of 160 students. We ran the search again for third year and got a list of 200. Since we can’t be sure all third years are in their final year, we’ll go with the dataset of fourth years.

The information we got? Students’ pictures, their login, their full first name and last name, the degree they’re on, their CID number and year of entry. All in a neat, tabular and machine readable format. With this information, it would be a piece of cake to produce a proof of concept application that can automatically harvest final year student data from this database, cross reference it with another service like Facebook (made even easier using their new social graph programming interface) for their day and month of birth (never mind privacy settings, some profiles show more to the Imperial network by default) and fill in the NSS as all of them by itself.
> Anything less than total veracity is a disastrous breach of reputation
> James Greenhalgh – Computing Student
And this is just one database in one department – if such a thing exists in DoC, could other departments within Imperial provide such accessible records? In fact, taking other universities’ engines and similarly readily available information into account, suddenly the results of the NSS don’t seem so trustworthy anymore.

What if some students have already filled in the survey, however? Funnily enough, the exposure of a second flaw makes our automated rigging process even more tempting. A student can fill in the NSS as many times as they want, with their first response taking precedence over all others. Simply put, one can write code to automate filling in the survey by impersonating many students on the first day (or even the first few hours) of the survey opening, and overwrite all their future responses with 100% satisfaction for everything eligible without the system (or the student) batting an eyelid for suspicious activity.

Felix contacted Jason Parmar, Deputy President (Education), about the ability to fill in the NSS many times, since students were confused as to what happened to their responses. In an inconsistent manner, accessing the NSS using the introductory email and attempting to complete it subsequently causes it to fail with the response: “Thank you for your interest in participating in this survey. You have already completed the survey”. Accessing it via their website and clicking through to “complete the survey”, however, allows students to redo it an unbounded number of times, leaving it unclear what the impact is on results.

Jason Parmar contacted Senior Assistant Registrar (Quality Assurance & Data) Rebecca Penny, who spoke with Ipsos MORI and confirmed that “students can complete the survey more than once, however only the first response they submit will be counted in the results”.

James Greenhalgh, a DoC student, and Tom Wilshere, Computing Department Representative, told Felix their feelings on the matter, saying: “for a survey so important in informing the immediate future decisions of thousands of school leavers, anything less that total veracity is a disastrous breach of reputation”.

James raised his concerns and said that “if these bugs have existed in previous years then newspapers are not only foolish to provide such heavy weighting to the results, but also damaging”, adding that this “cavalier approach to the futures of school leavers, especially given the increased financial burden they face, and to the future of already embattled academics shows yet another fundamental flaw in our country’s obsessive need to arbitrarily order all public establishments”.

The questions which remain are [how long these problems have existed and whether other universities have been exploiting the issues described](http://felixonline.co.uk/comment/2203/on-rigging-the-nss/). Could Imperial’s drop below UCL be explained by us simply being more honest?
