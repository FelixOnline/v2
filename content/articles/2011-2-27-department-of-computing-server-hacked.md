---
title: >
  Department of Computing server hacked
subtitle: >
  ICT tells computing students to change their passwords
date: "2011-02-27 11:47:44 +0000"

# Attributes from Felix Online V1
id: "896"
old_path: /news/896/department-of-computing-server-hacked
aliases:
 - /news/896/department-of-computing-server-hacked
imported: true
comments:
 - value: >
     Actually, it's not so unreasonable to complain about the integrity of our files (potentially including private keys to access other servers) being compromised, nor being unable to use SVN over SSH. Unless I'm missing a workaround (somebody please tell me if I am!) this ban forces anyone using SVN to push changes from a DoC machine or the IC-DoC wireless network. It has brought work on my final year project to a halt as I have deltas to push from my home desktop. Cue people telling me I should have used git. <br> <br>Anyway, it's more of an inconvenience than just needing to go into labs to work.,Yes, I previously tested the FireSheep tool in the department and reported on the findings, but they were not at fault there. The wireless network is intentionally unprotected and students are advised to use the WPA enabled Imperial wireless. In this case, however, information is critical indeed, and I will be further investigating what is being done and the causes over the week.,That's outrageous, no-one else was told the

# Article Taxonomies
categories:
 - news
tags:
 - imported
 - image
 - imported_comments
authors:
 - ak6309
highlights:
 - comment

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201102271138-ks607-hackingt.jpg"
image_caption: >

image_attribution: ""
image_attribution_link: ""
video_url: ""
---

The Department of Computing (DoC) has suffered a [security breach](http://www.doc.ic.ac.uk/csg/about) on their main [shell server](http://en.wikipedia.org/wiki/Secure_Shell), named shell1, which provides secure shell access to the lab machines from outside the department. On the 24th of February, the College’s ICT Service Desk issued an email to DoC students informing them of a “security compromise” which was discovered on shell1, which affects a significant number of commonly used DoC systems. The email described the compromise as “root level”, indicating the breach made way for malicious activity under administrative privileges.

ICT’s email to DoC students advised them to change their college password at their earliest convenience as a “precaution to ensure the details are not known to the malicious parties responsible for the breach”.

A source informed Felix that the breach was a [rootkit](http://en.wikipedia.org/wiki/Rootkit) that was installed on the shell1 server which had gone unnoticed for three weeks. A rootkit is one of the most difficult types of malicious software to remove, providing continued privileged access to a machine while employing many strategies to mask its presence from administrators and users. The software would allow circumventing the security measures set up, allowing the malicious attacker full access to the target. Typically, keyboard logging or screen capturing software is installed following a rootkit installation. They may also render the affected computers ‘zombies’, i.e. causing them to join part of a botnet for use in [DDOS](http://en.wikipedia.org/wiki/Denial-of-service_attack) (Distributed Denial of Service) attacks against other servers by bombarding them with data requests.

Rootkits are extremely difficult to detect, and removal may be impossible in the case of a [kernel](http://en.wikipedia.org/wiki/Kernel_(computing)) compromise. It is speculated that the malicious hackers involved recorded passwords of students and staff as they logged in to the department. A Computing class was advised by their lecturer to assume that “anything [they] did on those machines over the last three weeks, any data, communications, passwords, all that could have been recorded”.

It is not yet known whether the attack originated internally or otherwise, or what the intentions were. The Department of Computing Society sent out an email informing students of the actions they ought to take to reduce the potential damage caused by this. Changing the DoC password was considered of utmost importance, and those who did not by 5pm on the 25th of February had their accounts frozen until the password change had been made, with an email being sent to the account (no longer accessible, however) stating “[the user] will be unable to log in to [their] account” until the password is changed. Furthermore, any passwords stored by their browsers are also compromised, as well as the entire home directories where files are stored.

DoC and College have separate networks, which means non-DoC members are unable to log in to machines in the DoC labs using their normal credentials. Upon discovering the breach, ICT security imposed a block on the SSH (Secure Shell) service in DoC. DoC’s Computing Support Group (CSG) is currently having discussions with ICT to reopen access. For the moment, students have been advised to assume that “for the foreseeable future, no SSH access to or from DoC will be permitted”.

SSH is a protocol which provides a means to exchange data between machines via a secure channel. Students often use SSH to access their filesystem or applications on the lab machines from home. With the block of the SSH service arising close to a major coursework deadline, many second year students complained that they could not submit in time and called for extensions. The coursework, which involves rewriting a teaching operating system’s internals, had been extended over the weekend but the SSH service was not restored. Amongst the complaints, one student commented that “it was at worst an inconvenience”, and that “instead of [the group] working on the project on the sofa, [they] had to go into labs”. The review of whether SSH can be reopened continues today with further investigation.
