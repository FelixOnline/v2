---
title: >
  Chip-and-PIN yourself into a world of hurt
subtitle: >
  Simon Worthington looks at the so called 'secure' Chip-and-PIN verification system and how it might not be as safe as you think
date: "2010-02-18 14:29:05 +0000"
author_id: "sjw209"

# Attributes from Felix Online V1
id: "91"
old_path: /tech/91/chip-and-pin-yourself-into-a-world-of-hurt
aliases:
 - /tech/91/chip-and-pin-yourself-into-a-world-of-hurt
imported: true
comments:

# Article Taxonomies
categories:
 - tech
tags:
authors:
 - sjw209

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201002181426-srg03-ChipandP.jpg"
image_caption: >

image_width: "990"
image_height: "370"
image_attribution: ""
image_attribution_link: ""
video_url: ""
---

The days of securely paying with plastic are over. It's high time we all went back to paying with paper money, or perhaps even doubloons. They're both probably safer than the current electronic system we have in the UK, the infamous 'Chip-and-PIN'. Last week, eminent security researcher Ross Anderson and his team published a paper identifying a huge security flaw in the system that governs all of our real-life credit and debit card transactions. The take home message of the paper was that our cards are not, and have never been, as secure as we all thought.

Before our current system, bank cards carried just the magnetic stripe that stored the account details of the card. Cashiers would swipe the card and ask for a signature from the customer, which would then be compared to one written on the back of the card. It meant the decision of whether or not the signatures matched was up to the cashier. This system worked pretty well for the customer, except for the fact it was pretty open to fraud from forging of signatures or card cloning of stolen cards on which new signatures could be written. Chip-and-PIN was devised as the security mechanism that took the discretion out of the hands of the cashier and made the whole system electronic. Cards now include a chip that authenticates the transaction using a PIN known only to the user, which is entered into a card terminal when paying. The idea was that this would make stolen cards worthless whilst also removing any liability from the cashiers and by extension their employers.The whole authentication process is actually quite complicated, with data and numbers being transferred up and down and all over the place, but the important part happens when you actually type in your PIN.

The PIN is punched into the terminal's keypad and sent to the card. The card then decides if the PIN is correct and sends the appropriate message back to the terminal. The security flaw arises due to the fact that this conversation between the card and the terminal keypad is not encrypted. A piece of electronics in the middle can intercept the PIN entered on the terminal and simply return a 'yes' message which looks as if it originated from the card, regardless of if the PIN was correct or not. The card never even receives the PIN and eventually just assumes something went wrong and that the authentication was carried out successfully by some other method, like the good old signature check. Neither the card, the terminal or even the bank has enough information about the transaction to detect the subterfuge.

So where does this leave us consumers? Well, Chip-and-PIN was also designed as a system to help protect banks, shifting all of the liability for unauthorised purchases onto the cardholder. If the system worked securely this arrangement would be fine and it probably is the consumer's fault if they let someone else know their PIN. Now this security hole has been unveiled it means that thieves have a means to use stolen cards and therefore the cardholder genuinely isn't to blame. Banks can and do hide behind the fact that purchases are supposedly 'verified by PIN', with at least one court case using this as evidence of consumer negligence. This weakness brought to light by Anderson and his team however suggests that this might not always be the cause. Unfortunately for consumers, until this hole gets patched, which will take a very, very long time, or the justice system wakes up to the fact that Chip-and-PIN is broken, there is very little protection for card-wielding consumers.

What can you do to protect yourself? Very little, apart from vigilance at the terminal and ATM. Check the card slot for any foreign devices such as skimmers and make sure the terminal doesn't look like it's been tampered with before you stick your card in it. Watch those statements kids.
