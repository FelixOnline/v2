---
title: >
  Further disruption for Computing students
subtitle: >
  Server issues as rootkit investigation continues
date: "2011-03-01 20:36:00 +0000"
image: "https://f001.backblazeb2.com/file/felixonline/img/upload/201103012033-ks607-computin.jpg"
image_caption: "There have been a string of ICT mishaps in past weeks"
headline: true
featured: true
imported: true
aliases:
 - /news/955/further-disruption-for-computing-students
comments:
categories:
 - news
tags:
 - imported
 - image
authors:
 - ak6309
highlights:
---

Following the [recent root level security breach](http://felixonline.co.uk/?article=896) in the Department of Computing (DoC), sources have informed Felix that the [Computing Support Group](http://www.doc.ic.ac.uk/csg/) (CSG) endeavoured to successfully patch all affected physical lab machines, rendering them safe to access and free from keylogging or other malicious activities. The Secure Shell (SSH) service, taken down in order to prevent the vulnerability expanding, is being restored, with secure server shell4 providing students with external access to the lab machines.

CSG continue to face problems, however, as students suffered various issues regarding accessing their home directories in the Department of Computing yesterday due to problems on two home directory servers. This, although unrelated to [yesterday’s story](http://felixonline.co.uk/?article=944) regarding ICT user profiles, results in a similar problem in terms of loss of files and settings. Kestrel and Osprey, the affected disk arrays, experienced various failures yesterday. CSG are moving all of the affected data onto a new RAID array that should be in operation within the next few days.

Students of the Department of Computing have been informed by DoCSoc that the previously reported rootkit was successfully installed after various failed attempts, giving the attacker full access to the shell1 server. Typically, root level (administrative) permissions would only give access to stored passwords that are hashed. Hashing is a method of using one-way algorithms to protect passwords and other sensitive data that needs to be stored. For instance, passwords used to login to forums are typically hashed in the administrator’s database such that they may not view their users’ details. It is speculated, however, that the DoC compromise resulted in the rootkit being installed between the layers, which provided authentication, and RSA protection, which resulted in the malicious attacker potentially viewing all passwords transmitted unhashed and in cleartext form.

CSG have been working intensively on the various problems that have arisen. A DoC student commented to Felix that they are “second to none”, having observed their rapid and intuitive responses to various potentially catastrophic failures. It is still not known whether the breach arose from within Imperial or not.

The affected disk arrays, which caused the home directory problems, are speculated to hold majority of their data for higher year students in DoC and Information Systems Engineering (ISE). The majority of second year students continued to work in the labs unaffected. DoCSoc advised those affected that they may be able to retrieve their data from nightly backups using a recovery share and that “CSG are willing to give security advice to anyone worried in any way about the security breach”. Service updates are regularly posted on CSG’s website at [www.doc.ic.ac.uk/csg](http://www.doc.ic.ac.uk/csg/) along with informational messages.
