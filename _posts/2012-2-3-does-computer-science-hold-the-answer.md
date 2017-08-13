---
layout: post
title: >
  Does Computer Science hold the answer?
subtitle: >
  Alexander Karapetian on computing and important mathematical problems
date: "2012-02-03 11:01:45 +0000"
id: "2128"
old_path: /news/2128/does-computer-science-hold-the-answer
redirect_from:
 - /news/2128/does-computer-science-hold-the-answer
category: news

headline: true
featured: true

image_path: "http://felixonline.co.uk/img/upload/201202031101-sjw209-complex-zeta.jpg"
image_caption: >
  A plot of the Riemann-Zeta function over the Complex Plane. Trippy.
image_width: "1008"
image_height: "1008"
image_attribution: ""
image_attribution_link: ""
video_url: ""

author_id: "ak6309"
author_name: "Alexander Karapetian"
author_image_path: "img/upload/201111032143-sjw209-alex-karapetian.jpg"
author_twitter: "AlexKara15"
author_facebook: "http://www.facebook.com/alexkara15"
author_website_url: "http://alexkara15.wordpress.com"
author_website_title: "alexkara15.wordpress.com"

comments:
imported: true
---

Computer Science is an often misunderstood academic topic. Many people outside the field do not perceive the breadth and depth of research material that’s pumped out daily and how it affects our everyday lives. To observe its profound effect in the real world, we must first examine the theoretical. There are a variety of problems which are famous in mathematics. The [Millennium Prize Problems](http://www.claymath.org/millennium/) and [Hilbert’s Problems](http://mathworld.wolfram.com/HilbertsProblems.html) are collections of such unsolved problems selected by the [Clay Mathematics Institute](http://www.claymath.org/index.php) and mathematician [David Hilbert](http://en.wikipedia.org/wiki/David_Hilbert). The former are noted for their million-dollar prize for the first verified solution to any one of the seven problems, six of which remain unsolved at the time of writing.

Why should the average person care about finding solutions to them? First, we must realise their real world applications. While some high profile fields are largely saturated in terms of research progress, Computer Science has taken an opposite path and the field is increasingly gaining momentum, with discoveries emerging due to breakthroughs in logic and theoretical computational systems and mathematics.

A core component in electronic circuits is the transistor. The number of transistors within computer processor chips have increased over time roughly according to [Moore’s Law](http://www.intel.com/content/www/us/en/silicon-innovations/moores-law-technology.html), allowing for greater processing power. This law states the number of transistors will double every 18 months and eventually reach a limit. This limit is frequently extended, and consumers continue to see improvements yearly. This greater processing power is not limited to consumer use, however, and research institutes have begun to take advantage of the speed and efficiency gains to harness the raw power of the integrated circuit and [GPU](http://www.nvidia.com/object/GPU_Computing.html).
TODO: image from 
If Physics is to be considered the application of Mathematics to the Universe, frequently giving us answers to life’s questions, then Computing is the application of Mathematics to the virtual Universe. For instance, creating a perfect sphere is [impossible in the physical realm](http://www.csiro.au/Outcomes/ICT-and-Services/Data-deluge/Precision-spheres-in-push-to-re-define-kilogram.aspx), though such perfect elements are digitally representable. This expressive property has opened the door to new methods of analysis with machines, using them as an aid to solving existing research problems. For instance, a quantum mechanical system described to us by Physics is best explored by a [quantum computer](http://en.wikipedia.org/wiki/Quantum_computer), a machine which is capable of operating on the same physical levels as the very realm researchers are attempting to understand.

The [Riemann Hypothesis](http://www.claymath.org/millennium/Riemann_Hypothesis/), considered one of the most important problems in pure mathematics (_Borwein et al. 2008_), involves the distribution of the prime numbers. The hypothesis states that the solutions to the Riemann-Zeta function lie on a critical line. While no proof yet exists, the first [ten trillion values have been verified](http://mathworld.wolfram.com/RiemannZetaFunctionZeros.html) by distributed supercomputing efforts.
TODO: image from 
While an underlying pattern appears plausible, this Hilbert Problem remains unproven. The unpredictable nature of the prime numbers has been put to use in the [RSA](http://mathworld.wolfram.com/RSAEncryption.html) (_Rivest, Shamir and Adleman, MIT, 1978_) cryptographic algorithm. This system, considered currently unbreakable due to technical infeasibility, provides digital security with primes. Banks, websites and governments worldwide have adopted RSA and it is a common means of distributing an encryption key. A [brute force search](http://mathworld.wolfram.com/ExhaustiveSearch.html) would need to test possible primes to break this, but since there is no reliable way of determining the next prime, computers may take years to perform this operation, rendering this method impractical. A proof of the Riemann Hypothesis, however, may provide a means of determining a pattern and breaking RSA.
> Every mathematical theory... will sooner or later find an application
Brute force guessing of standard passwords is also impractical. We are all currently encouraged to create case-sensitive alphanumeric passwords. The problem with checking every possibility lies not with verification; a computer can easily identify whether two pieces of text are equal. It lies with first obtaining the solution to compare. Some techniques search through dictionary entries, allowing quicker identification of common passwords.
TODO: image from 
Another Millennium Prize Problem, touted the most important unsolved problem in Computer Science, [P vs NP](http://www.claymath.org/millennium/P_vs_NP/) (_Cook, 1971_) revolves around this concept. It asks the question of whether a problem having quick machine verifiable solutions means those solutions can also be found quickly. Problems of the latter are classified [P](http://en.wikipedia.org/wiki/P_(complexity)), while those that are hard to compute are NP. In the case of guessing passwords, it becomes apparent that verification is a P problem (easy) while searching for the correct password is [NP](http://en.wikipedia.org/wiki/NP_(complexity)) (hard).

The world currently assumes P not to be equal to NP, as well as most Computer Scientists (_Gasarch, 2002_) agreeing, while majority of security systems rely on this assumption. A [claimed proof](http://www.win.tue.nl/~gwoegi/P-versus-NP/Deolalikar.pdf) of P not being equal to NP (_Deolalikar, 2010_) was later shown to be incorrect, though the possibility raised many concerns for security. The implications would be far-reaching for society. A correct proof either way will have great impact, since the solution to P vs NP intrinsically links to solutions of the other Problems. If P=NP, not only will a new era of cryptography need to be abruptly ushered in, but NP-hard problems within countless other fields such as Biology (genome sequencing, protein structure prediction) and Physics (simulations) would become easier.

The effects of solutions on society’s widely used systems cannot be ignored. They would pave the way to a once-distant future, with consequences such as the rise of new, future-proof technologies resistant to P=NP attacks, leading to better consumer systems. A hail of advancements in knowledge would be made, with improvements to society’s quality of life due to significant improvements to Biology, Medicine and other fields. Grigori Perelman, responsible for solving the [Poincaré Conjecture](http://en.wikipedia.org/wiki/Poincaré_conjecture) (involving the characteristics of spheres in higher dimensions) remarked: “Where technology creates new machines and devices, Mathematics creates their analogues – logical methods for analysis in any field of science. Every Mathematical theory, if it’s strong, will sooner or later find an application.” (_Perelman, 2003_)

As researchers move on to proving the next unsolved theorem armed with potent approaches and technology from Computer Science, the laypeople of society would truly revel in the consequences of such discoveries, and would therefore benefit the most overall.

_Adapted from a winning submission to the [RCSU Science Challenge](http://www.rcsu.org.uk/sciencechallenge/) 2011._
