---
title: >
  Firefox add-on leaves private student data open to snoopers
subtitle: >
  Unsecured Department of Computing network at hijacking app FireSheep’s mercy
date: "2010-11-04 19:00:49 +0000"

# Attributes from Felix Online V1
id: "322"
old_path: /news/322/firefox-add-on-leaves-private-student-data-open-to-snoopers-
aliases:
 - /news/322/firefox-add-on-leaves-private-student-data-open-to-snoopers-
imported: true
comments:
 - value: >
     It's a shame Imperial-WPA coverage in DoC is so poor. I hate using IC-DoC but don't really have a choice! It is scary how easy this add-on makes session hijacking :/,Facebook is now blocked on IC-DoC :p,https://www.facebook.com/ simples.,It'd be nice if that link kept its SSL... not great needing to copy link location and add an 's' for each click!,I hope SSL equivalents become more widespread yeah..,zomg - unsecure network isn't secure?!?!11eoen,If you want your data to be private, it’s your responsibility to ensure this is so. The argument that its more convenient to use the DoC wifi than Imperial-WPA is silly. That’s equivalent to saying that sex without a condom is more convenient. Possibly true, but you should know the consequences... <br>In both cases - Have Fun, Play Safe <br>,I bow down humbly in the persecne of such greatness.

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
 - longread

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201011041857-ma1307-fbstalki.jpg"
image_caption: >
  FireSheep is a little more subtle than this...
image_width: "2592"
image_height: "3888"
image_attribution: "Kadhim Shubber"
image_attribution_link: "http://www.felixonline.co.uk/?user=ks607"
video_url: ""
---

Wireless network security has very often been the subject of criticism, and a proof of concept tool released two weeks ago called [FireSheep](http://codebutler.github.com/firesheep/) outlined how a combination of security problems on websites and wireless networks can result in the disclosure of personal information. Felix was able to use FireSheep in certain areas on campus to gain access to over twenty unsuspecting users’ Facebook, Twitter, Flickr, Tumblr and Gmail accounts.

Transmitting data over a wireless network results in virtual packets being sent between the base stations and the user’s machine. These packets are prone to inspection and capture, and if no form of wireless encryption is being used, such as [WPA](http://en.wikipedia.org/wiki/Wi-Fi_Protected_Access), the captured packets can be analysed effortlessly to derive the data which is being transmitted. This could equate to a Facebook status, a downloaded email or even background information such as a cookie authenticating the user to the website.

The problem lies here, as Felix tested this tool around various parts of the campus. FireSheep is a Firefox extension which appears as a sidebar in the popular Internet browser. The sidebar hides the complexities of packet inspection from the user and performs various tasks in the background. It requires a packet capturing driver to be installed, called WinPCap, and using this, it monitors all traffic visible to the machine’s network card (particularly packet data corresponding to other users on the same wireless network) and attempts to hijack session cookies for websites.

Should an unsuspecting user log in to one of the listed services over the same network the hijacker is on, their picture and username will be displayed in the sidebar and the hijacker can gain access to the service, fully authenticated as the person captured, by simply double clicking on the name in the sidebar.

Felix was not able to successfully use the tool over the Imperial-WPA wireless network on campus, since packets are encrypted with protection, although this type of network is still vulnerable to other types of attacks. The IC-DoC network, situated in the [Department of Computing](http://www3.imperial.ac.uk/computing) in the Huxley building, however, is unsecured. As a result, Felix was able to use the tool to its full extent. Armed with an old laptop with a network card that allowed capturing packets in ‘promiscuous mode’, where the user has access to all packets visible to the card (some laptops protect against this), screenshots of private messages within Facebook accounts, phone numbers from ‘numbers please’ groups and other private information, Felix approached Computing’s security team ([CSG](http://www.doc.ic.ac.uk/csg/)) and Imperial’s ICT security for a response.

Regarding the FireSheep tool, ICT commented that it is "very interesting", and that "unencrypted wireless networks have always been a security issue, but they’ve never been so high profile", adding that "the release of FireSheep might generate enough publicity for home wireless users to think seriously about whether encryption is enabled on their home networks, and whether a wireless network is safe to connect to."

"ICT has always had security in mind when designing the College wireless service", they added, "we provide a number of different wireless networks to accommodate the huge range of devices which we support. It is planned that staff and students in Computing will be migrated to use the main College wireless network", Imperial-WPA.

Felix interviewed two students from the Department of Computing who were affected by this issue. Approached with information he expected was private, Josh Forman-Gornall said: "I was surprised when I saw my account was accessible by anyone else. I expected the department would have measures to protect against this", adding "I think it’s a travesty how they have unprotected wireless. It should be WPA."

Upon explaining the alternative of using the Imperial-WPA network, Josh added, "I would use it but the signal strength of IC-DoC is stronger so it’s my first point of call. I have good speed, but it seems I lose my privacy as a result." Commenting on the tool itself, he said, "it’s quite a scary prospect that the author has made it so simple and put it out there. It means anyone can do it without knowing how it works. Pretty much everyone’s bound to be using that tool soon. It would wreak havoc, but I hope it doesn’t get that far".

Felix also approached Danish Khan with less of an emphasis on network security but more to do with the websites’ lack of SSL encryption, who said "if FireSheep worked regardless of network security, I guess I’d have to stop using them or switch to a wired connection." He added that "Facebook and other sites could offer an HTTPS service which used SSL throughout, for networks you don’t trust, but you’d expect to be able to trust DoC".

David McBride, of the Computing Support Group, responded to these comments in an interview explaining that there will be a computational cost associated with services such as Facebook providing SSL throughout the session, but that the problem is the underlying assumption of privacy in an otherwise unencrypted session on a website without SSL.

He explained that the IC-DoC network is unsecured to allow test devices, research machines and robots that are not compatible with encryption to connect to networked resources or be controlled over the wireless network. Coverage issues with the DoC network can be investigated and fixed, but ultimately, for a reasonable expectation of security, the entire session from the moment the website is visited must be encrypted, not just the authentication and login.

"Don’t panic", he added, explaining that the attack has existed for many years, and that users should associate with the Imperial-WPA network for increased protection against this type of attack. "If in doubt, if the padlock isn’t there when you started using the website, it isn’t safe".

Google’s Gmail service switched to SSL in January this year, but services such as Facebook have yet to follow suit. Twitter currently provides an SSL only option as a feature, and Felix advises users with doubts to both associate with the Imperial-WPA network where possible. The attack, formally known as HTTP session hijacking, is an inherent problem with the way the websites are presented to the user and not the fault of the wireless networks and their security measures. Firefox extensions such as HTTPS-Everywhere and Force-TLS can be used to enable encryption where possible to thwart snoopers over a wireless network.
