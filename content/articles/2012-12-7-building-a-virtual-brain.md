---
title: >
  Building a virtual brain
subtitle: >
  A step closer to an artificial human brain? Pavitar Devgon discusses
date: "2012-12-07 01:39:38 +0000"
author_id: "tna08"

# Attributes from Felix Online V1
id: "3039"
old_path: /science/3039/building-a-virtual-brain
aliases:
 - /science/3039/building-a-virtual-brain
imported: true
comments:

# Article Taxonomies
categories:
 - science
tags:
authors:
 - tna08
highlights:
 - photos

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201212070139-tna08-f1.large.jpg"
image_caption: >

image_width: "0"
image_height: "0"
image_attribution: "sciencemag.org"
image_attribution_link: ""
video_url: ""
---

Intelligence has been a hot topic in robotics for decades – ever since we started creating computers and machines, we have wanted to imbue them with a similar level of learning and intelligence to our own. So we turned to the most intelligent machine we had – our brains. Researchers in this field have been simulating neuron maps in hopes of replicating the human abilities. Over time, they have been getting ever-more efficient at it; the Blue Brain Project was able to simulate 1 million neurons. The more recently created [Cognitive Computation Project was able to simulate 1 billion neurons](http://www.sciencemag.org/content/338/6111/1202), the same amount as the average cat. However, an ambitious new project has been reported to simulate near the human scale of 100 billion neurons.

While previous experiments only sought to increase computational power by including more neurons, the team, including Chris Eliasmith, Terrence Stewart, Xuan Choo, et al., also tried to answer the question of how a complex brain produces behaviour. The project included many anatomical and physical constraints to be as close to the real life neural data as possible.

A research paper, published on [sciencemag.org](http://www.sciencemag.org/content/338/6111/1202), shows how the team’s model responds to eight different tasks; nicknamed Spaun, the model is shown performing actions such as reading and writing a list, counting from a given number, and reading the position of a given number. The input is given through a 28x28 image of a character and the output is the movement of an arm – essentially, Spaun writes the answer to whichever task he is trying to perform.
> A new project simulating 100 billion neurons
The figure above shows the functional architecture used to create Spaun. The bold lines are indications where the brain passes information between different elements of the cortex, whilst the thinner lines represent communication between the action selection (equivalent to the basal ganglia) and the cortex. Communications between the different components of the model are analogous to how our neuron firing patterns in the brain transmit impulses.

The process of compression can also be seen in the model, where representational impulses are compressed from higher dimensional space (images taken from the visual input) to lower dimensional space (the standard 3D map used to draw the output). By using compression fewer cells need to be used further down the line, so allowing the brain to be more efficient and functional with its manipulations of impulses.

This experiment is hoped to be the first step of further successful ventures, building on how neural pathways adapt to different tasks. Even though there are only five subsections in the main model, which deal with performing tasks, Spaun is able to map across them, choosing the best one suitable for the task. The purpose of the research is to build towards a proposal for a unified group of neural mechanisms able to perform any task, which embodies the choice inherent in our brains. As the research paper says, “Spaun’s main contribution lies in its breadth… Spaun’s uniqueness lies in its being a platform for exploring the robust flexibility of biological cognition.”

DOI: [10.1126/science.1225266](http://www.sciencemag.org/content/338/6111/1202)
