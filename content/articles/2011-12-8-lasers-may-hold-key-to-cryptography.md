---
title: >
  Lasers may hold key to cryptography
subtitle: >
  True random numbers generated from laser light
date: "2011-12-08 20:54:25 +0000"

# Attributes from Felix Online V1
id: "1924"
old_path: /science/1924/lasers-may-hold-key-to-cryptography
aliases:
 - /science/1924/lasers-may-hold-key-to-cryptography
imported: true
comments:

# Article Taxonomies
categories:
 - science
tags:
 - imported
 - image
authors:
 - ak6309
highlights:

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201112082053-pk1811-green-laser-pointer-diode-dpss-beam-show-(10)-1.jpg"
image_caption: >
  The Diffie-Hellman Key Exchange system relies on random numbers
image_attribution: ""
image_attribution_link: ""
video_url: ""
---

“The generation of random numbers is too important to be left to chance.” This was the title of a 1970 article by recognised expert in pseudo-random number generation Robert R Coveyou. There are many controversies surrounding the various algorithms used to generate numbers with the illusion of randomness, but one Ottawa physicist appears to have developed a way to generate them truly randomly.

[Ben Sussman](http://www.chem.queensu.ca/people/faculty/Stolow/People/SussmanB.html), who works with quantum technologies at the [National Research Council](http://www.nationalacademies.org/nrc/), used laser pulses which last only a trillionth of a second to demonstrate the generation of random numbers. The laser pulse is fired at a diamond and the emergent photons are measured. Due to quantum vacuum fluctuations, the quantum state of the photons which were fired are changed. This is due to the microscopic flickering of the amount of energy in a minute point in space.

If the method of transforming an entity is known to an attacker, the cryptographic system the technique is applied to can be compromised. Sussman commented on the photons’ changes of state, explaining “what quantum mechanics tells us is that it’s against the laws of physics to know”.

Random numbers are used to seed cryptographic systems worldwide. They are used in the core security algorithms which provide two way protected communication, site certification and digital signatures. These features can then be applied to secure website browsing, credit card transactions and other security-intensive elements of the digital world.

In cryptography, Kerckhoffs’s principle states that only the key of a security system needs to remain secret and not the algorithm. In many cases, digital keys are formed from outputs given by pseudo-random number generators. If these generators contain flaws, the keys will contain inherent vulnerabilities to attack. Sussman’s method of taking advantage of quantum mechanical effects to produce random numbers has the potential to produce large quantities of random numbers very efficiently, with the added benefit that the method of generation, how the quantum states were changed, is impossible to deduce.

The one-time pad cipher, known to be information-theoretically secure, is a mathematically perfect means of securing information. The drawbacks are in the effort required for its successful implementation. One requirement is the use of truly random numbers as keys. Sussman hinted at this in his comments, noting “a truly random number generator will provide impenetrable encryption for communications”.

While some scientists continue to understand more about the mysteries of quantum mechanics and probe what we can and cannot know mathematically, others utilise the latter to benefit those requiring secrecy.
