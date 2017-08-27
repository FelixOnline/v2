---
title: >
  Faster Fast Fourier Transform found
subtitle: >
  A group of MIT researchers recently presented their findings regarding an improved algorithm for Fast Fourier Transforms.
date: "2012-02-02 19:37:09 +0000"
image: "https://f001.backblazeb2.com/file/felixonline/img/upload/201202030340-ak6309-sfft4.png"
image_caption: "Fourier Transforms are highly useful for signal processing"
headline: true
featured: true
imported: true
aliases:
 - /science/2092/faster-fast-fourier-transform-found
comments:
categories:
 - science
tags:
 - imported
 - image
authors:
 - ak6309
highlights:
 - photos
---

Researchers at MIT have discovered a new method of performing the Fast Fourier Transform algorithm which, in a large set of use cases, adds performance improvements. The MIT group submitted their paper, “[Nearly Optimal Sparse Fourier Transform](http://arxiv.org/abs/1201.2501)” to ArXiv on 12 January and presented their findings in the Symposium on Discrete Algorithms (SODA) last week.

The Fourier Transform is a popular means of mathematical analysis which decomposes functions into their constituent frequencies. The Discrete Fourier Transform (DFT) is a realisation of this as an algorithm which takes a sequence of real or complex numbers to process information stored in computers, with uses in academic areas in Computer Science and mathematics. The Fast Fourier Transform (FFT) is a set of algorithms which are able to efficiently compute the DFT in a significantly faster time. FFTs have been hailed as the Swiss Army Knife of algorithms, with wide ranging applications in graphics (image processing, filters), digital signal processing (reconstructing a signal from frequency data), compression, optics, crystallography and data searching.

FFTs work by performing a variety of optimisations on the DFT. Speeding up elements within the summation equation, such as the amount of multiplication operations involved, allows for reduced processor usage during the algorithm’s execution. This increases efficiency significantly, but there is no known proof which dictates the FFT is the fastest algorithm for computing the DFT. Renowned MIT mathematician Gilbert Strang has described the FFT as the “most important algorithm of our generation”.

The MIT researchers’ new algorithm, coined the Sparse Fourier Transform (sFFT), improves on the FFT by considering a signal to be a product of narrower slices of bandwidth. With this, the signals are treated as oscillations rather than binary up/down directions, and the same slice of bandwidth can be sampled at different times to better determine where the dominant frequencies are. This strategy, notable for its use in 4G cellular networks, allows for sparse (heavily weighted) frequencies to be identified faster. As a result, the algorithm’s worst case efficiency is equivalent to the FFT, but the average case is an improvement for many general input signals.

The sFFT algorithm, developed by two professors from MIT’s Computer Science and Artificial Intelligence Laboratory (CSAIL) along with their students, has been described by Professor Martin Strauss from the University of Michigan as “greatly [expanding] the number of circumstances where one can beat the traditional FFT”.
