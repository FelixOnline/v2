---
title: >
  Encryption moving forward
subtitle: >
  Perfect Forward Secrecy and What It Means for the End User
date: "2013-11-27 16:04:41 +0000"

# Attributes from Felix Online V1
id: "4141"
old_path: /tech/4141/encryption-moving-forward
aliases:
 - /tech/4141/encryption-moving-forward
imported: true
comments:

# Article Taxonomies
categories:
 - tech
tags:
 - imported
 - image
 - multi-author
authors:
 - pk1811
 - ywc110
highlights:

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201311271604-me1711-tech_sec.jpg"
image_caption: >

image_width: "0"
image_height: "0"
image_attribution: ""
image_attribution_link: ""
video_url: ""
---

The recent spate of NSA tapping data and storing huge amount of internet traffic has been rather worrying. The exposé courtesy of Edward Snowden has made end-users more aware of the need for encryption, and accelerated the process of enhancing the security between end users and the service providers at many big names. Twitter is the latest company to join the ranks of Google and Facebook by implementing Perfect Forward Secrecy on their servers. This is a much needed move. The end user might not notice anything different in their experience, but NSA will certainly have a harder time trying to pry open your private communications.
 Transport Layer Security (TLS) and its predecessor, Secure Sockets Layer (SSL) are the most widely used protocols in your web browser to encrypt traffic between the user and service providers such as Google and Twitter. When you see a “lock” icon in the address bar of your browser, and a web address beginning with “https”, that’s a sign that TLS is being used to encrypt your traffic. TLS works in two steps.
 Firstly, your browser will perform a “handshake” with the server to, amongst other things, decide on the cryptographic algorithm to use for the entire session, and a “shared secret key”, known as a session key, that will be used to encrypt and decrypt the traffic. Then, the server and your browser will transfer data to each other using the session key and an algorithm that was agreed on. The same key is used for encryption and decryption, and therefore the algorithm used is called a symmetric-key algorithm.
 However, most websites implement a form of TLS that does not exhibit the “perfect forward secrecy” property, and this weakness lies in method being used for handshaking, in particular the step when the shared secret key is being transmitted. This is because most servers uses the RSA algorithm to exchange the shared secret, a type of public-key cryptosystem.
 A public-key cryptosystem is an asymmetric algorithm, having different keys for encryption and decryption. The public-key is used for encryption, and is public and known to all. The private-key is used for decryption, and is only known to the owner. This means that anyone can encrypt messages using the public-key that only the recipient with the private-key can decrypt.
 RSA is such a system, by deriving the public and private keys from a pair of randomly generated prime numbers. The strength in this system lies in the fact that it is infeasible to try and “crack” an encrypted message or “find” the private-key from the public-key in a reasonable time.
 Most servers implement TLS by asking browsers to generate some random secret, and then sending that secret encrypted using the server’s public key back to the server. If someone can, by means as simple as obtaining a court order, obtain the server’s private key, then all communication to and from the server can then be retroactively decrypted because the private key is essentially the master key in the grand scheme. This is a violation of the “perfect forward secrecy” property that states that even if one of the secret keys are compromised, the session keys are not all compromised.
 In order to obtain this property, another form of protocol for key exchange has to be used. “Diffie–Hellman key exchange” is an example. This process can be illustrated by a very simple analogy as seen in the diagram. Essentially, any eavesdropper will not be able to trivially obtain the shared secret used. In addition, because the keys are going to be different for each session, the compromise of a secret key on the server will not cause the compromise of the session keys, thereby enabling perfect forward secrecy. The downside to this protocol is the increased complexity in implementation, and a possible performance hit on the server due to increased complexity. However, Twitter has written that they have not noticed any adverse effects in terms of performance, and that the increased security is worth the slight increase in complexity.
 One problem still remains in all of these security measures: technological advancement. With the NSA storing information storing vast amount of encrypted traffic, there is a chance that these traffic can still be retroactively decrypted in the future. This is because many of the cryptography technique rest on the belief that cracking them are equivalent to solving two well known problems that are known to be in the complexity class NP: the prime factorisation and discrete logarithm problems. This is equivalent to saying that there are no computers that can solve these problems in a reasonable amount of time. However, it has been proven that a quantum computer would be able to solve these problems in a reasonable amount of time, and if someone can prove that P = NP (one of the biggest unsolved problems in Computer Science), then this no longer holds.
 In the digital age where connectivity is ever more prevalent, it is still important to have some kind of privacy. Aside from the possible threats of governments trying to silence dissent, simple things like keeping your communication away from an annoying ex-girl/boyfriend can be as important.
