---
title: >
  N_Polytope: Behaviours in Light & Sound After Iannis Xenakis
subtitle: >
  Íñigo Martínez de Rituerto in conversation with artist Chris Salter and engineer Marije Baalman
date: "2014-06-23 14:56:11 +0100"

# Attributes from Felix Online V1
id: "4716"
old_path: /music/4716/n_polytope-behaviours-in-light--sound-after-iannis-xenakis
aliases:
 - /music/4716/n_polytope-behaviours-in-light--sound-after-iannis-xenakis
imported: true
comments:

# Article Taxonomies
categories:
 - music
tags:
 - imported
 - image
 - multi-author
authors:
 - im808
 - jal08
highlights:
 - longread

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201406231556-jal08-n_polytope_berlin_016.jpg"
image_caption: >

image_width: "0"
image_height: "0"
image_attribution: "Inigo Martinez de Rituerto"
image_attribution_link: ""
video_url: ""
---

__In an abandoned swimming pool somewhere in the northern perimeter of Berlin, lights burst to the rhythm of acoustic ricochets. A bizarre choreography of light and sound imitates patterns of synchrony and predation found in the animal kingdom. __

The source of this erratic audiovisual experience is a self-aware system of 200 nodes, comprised of 50 loudspeakers and 150 LEDs. Coupled with microphones and photodiodes, respectively, each unit, or ‘agent’, extends a field of awareness that can sense itself as well as its surroundings. The audiovisual patterns that emerge from the amalgam resemble a cybernetic electroacoustic organism that entrances visitors and lures them to the deep end of the pool.

n\_polytope is a sound art installation designed and built by a team of artists, engineers and researchers at Concordia Univerity in Montreal, Canada, and was now set up for the 15th edition of Berlin’s Club Transmediale Festival (CTM) for “adventurous music & art”. Taking place over an entire week, in venues across the city, CTM gathers the avant-garde in electronic and experimental music in the present day, as well as paying homage to the pioneers of the 20--th Century. This installation in particular was inspired by the ‘polytopes’ of Greek engineer-turned-composer Iannis Xenakis, which sought to synthesize multisensory environments of light and sound, which surrounded audiences in complex architectures of cable geometries. n\_polytope extends Xenakis’s ideas of stochastic sound synthesis and acoustic architectures by making use of modern algorithms in machine learning and distributed artificial neural networks.

I spoke with Chris Salter (Director of Montreal’s Hexagaram-Concordia Centre for Research and Creation in Media Art and Technology) and Marije Baalman (ex-postdoc at Hexagram and currently a hardware engineer and freelance artist at Amsterdam’s STEIM (Studio for Electro-Instrumental Music)) about the technological and philosophical aspects of the installation, which was put together by a wider team of collaborators in architectural design, laser systems, programming and electronics.

__Íñigo: How did you quantify the awareness of the individuals within the system?__

Chris Salter: Well, it’s a really simple system. You have an LED and you have a light sensor. So the sensor can see itself, and then that awareness runs over an RL (Reinforcement Learning) algorithm and the RL runs over a neural network. So what he was trying to figure out is that when it does an action, how does it change its environment? Well of course it could change its environment by doing the action again, so it gets feedback. So the sensor is a very primitive sensory-motor system. It learns to do something, right? Usually these systems settle into some minima. The light flickers, and then it finds a steady state. Either it stays on, or it goes off. Usually it stays on.

So what happens then if you change the environment and you turn the lights off in the room? Then it has to relearn, because all the conditions have changed. Or you suddenly blitz it with a strobe, or a flash, or something. Then it starts up again and tries to relearn again. So if you continually change its environment, then it’s constantly trying to adapt, so it may never get into a steady state. So that was one of [Sofian’s] tests. So then we thought about how to build this form of behaviours and systems, on a larger scale. And I knew from the start that the algorithms were complicated so that these things would talk to each other.

We started with the basic idea that you have a lot of different agents, and they all start at different times. So, for instance, one of the algorithms he runs is a ‘firefly’ model, so the agents attempt to synchronize with each other. Once they eventually synchronize, they then stay synchronized for a period of time, and then either desynchronize or remain in a steady state. So that’s one of the algorithms we’re running. You have to tweak these reward functions all the time. You have no idea really – the system doesn’t really know what it’s doing. It just knows, “Oh, that’s an interesting action, I got that reward, I got this number and I’ll do that again.” These learning systems are not very good as generative systems, but we’re trying to use them in that way, and to produce generative behaviours as opposed to trying to get to a certain task that it will then be able to repeat.

__I: So does it fall into sequential states? Not a steady state, but a sort of arrhythmic behaviour?__

C: Sometimes, but we also do a lot to constrain the system. Like, which nodes are active at one point, or what region spatially; or how long are they active in a given sequence; or do they all start at the same time and then drift? For instance, they have this one algorithm which is a ‘chasing’ model. So the idea is that the agent gets a reward for staying away from the other agent. Of course it’s crossing into the agent all the time because it doesn’t really know. So at what time it learns ‘OK… I’m colliding with the other agent, and I’m getting punished, so I’ll try to stay a little further away.’ We’d map that in terms of the speed of which the flashes happen on these lines. It’s a question of whether you see spatial patterns or temporal patterns, because people look for spatial things – if I see the shape again and again it means it’s not a random system. If I sense very simple rhythms or pulses… once it gets to polyrhythmic it gets very complex since it’s not very good at rhythm.

__I: Like trying to understand which car’s blinkers are going faster than the other’s?__

C: Right. And of course, the brain has extremely interesting temporal properties - how all these neurons start synchronizing with each other to form some notion of perception that we have, which is way, way higher level than this. So Xenakis, whose work this piece is based on, was trained as an architect, trained as an engineer, but also as a composer. He came out of a period where in the sciences, thermodynamics and statistical mechanics were the main concern… he was interested in micro and macro properties and Boltzmann models of gases and so on. So he used those models in his composition (Poisson distributions, etc.). He wanted probabilistic models, he wanted stochastic music, he didn’t want deterministic models. He wasn’t interested in determinism, he was interested in control. He was interested in not the kind of linear polyphony of what the serial composers in the 1950s were doing, where everything was deterministic, based on tone rows, and so on. He was actually interested in patterns like what happens when, in a riot, suddenly someone starts yelling and then it picks up and spreads, exhibiting a kind of swarm behaviour. Or like the patterns of raindrops falling on surfaces. So it was the idea of sound as a mass, or a cloud, or grains.

He was very critical of the Fourier models of synthesis. Fourier is non-temporal basically, you have to stack things over time with enough bins (time-frames) to see if there’s a temporal shape, since time and frequency are separate domains. He was very interested in the work of Gabor, who was a physicist who had these wavelet models. Gabor of course imagined that time and frequency could be in the same domain, so if you think about a grain having envelopes and you can shape individual grains, but at the same time considering both domains. It’s very interesting to think about sonic behaviour in those terms.

__I: It would be interesting if there was dynamic switching close to the Gabor limit [where the trade-off in certainty between temporal and spectral identity is defined], like maybe it’s behaving in temporal patterns first and then reaches some limit and then the spectral patterns become more dominant.__

C: Yeah, that’s the kind of space he came out of. I was talking with a friend of mine today who’s a professor at UdK (Universität der Künste, Berlin) who is also a programmer, and the whole question was whether Xenakis had any interest in cybernetics and feedback systems. He probably didn’t, even though this was happening at the same time. He was very aware of these trends in the sciences, but it’s a very different set of models that come from thinking about control systems versus the statistical systems.

__I: I guess he was more interested in generative properties or stochastic properties rather than manipulating it himself.__

C: Exactly. He was always interested in computers as systems to drive things, not as systems that produce responses that you can shape. That’s one of the questions we’ve tried to address in thinking about what these projects could mean now, if you approach these things from these machine learning algorithms or agent networks or neuronal models – where does the active responsibility lay in the system or how you negotiate between these agents and human predilection for making patterns and structures and shapes that are clearly perceivable and have dramatic effect and so that’s very much the tension. That’s the research area and that’s from a technical or philosophical point of view and also from an aesthetic point of view, because that question overlaps all of those spaces. They all somehow operate together. You can’t just say “Well that’s a technical question, we can solve that,” and that you can do something with a tool. They are very intimately related, because the degree of shaping you have over the behaviour of something is highly dependent on what kind of behaviour that thing or that process produces, and part of it is observing that behaviour constantly in some type of dialogue. The English Science Studies scholar Andrew Pickering calls it the dance of agency between you and the non-human parts of things. He’s a physicist by training, and is very well known in the area of science and technology studies for discussing performative practices in sciences, questions of science being socially shaped. Because science is not just scientists discovering nature, it’s constructing those phenomena with instruments and cultural frameworks like laboratories. There’s a constant give and take between materials you’re using and watching and seeing what they do, and then describing them. There’s a similar thing with these kinds of projects, like right now there’s nothing happening [in the installation] - it’s like when the cells die in the lab. The experiment’s done. So that’s a little background of where we’ve been thinking.

__I: I was wondering when you said about the single node prototype and altering the environment by strobing or switching it on and off. So here the environment is actually the structure itself, the ensemble of all the elements.__

C: Yeah. So for instance there’s all sorts of noise in the system. There’s a sensor that’s looking at those lights, but it’s not a precise system. It’s more about the idea that sometimes when those lights are next to their neighbours, they may have more energy because they have a different set of conditions, their ‘Umwelt’. That means that the way they behave is never going to be exactly the same. There’s a structure to it, but they’re never going to do the same thing again and again because they’re so dependent on what their neighbours are doing. You see patterns and it’s not like it’s just totally random all the time. Ultimately the pattern is the steady state that one perceives. But we don’t let them do that, we keep them active. When you’re testing these RL algorithms that evolve until they reach a steady state, but we don’t let them reach that steady state, we constantly try to keep them moving.

__I: So when it reaches a steady state, the whole system stops? __

C: No, it doesn’t stop. There’s an energy model and once it runs out of energy it either stops or you boost it with new energy because it gets a blast of light from something around it and it starts up again. The system is reacting to things happening in its environment and the agents will tend to start up again.

__I: So it’s an environmental thing, not arbitrary?__

C: Right, it’s environmental.

__I: How reactive is it to the spectators?__

C: Not at all. Unless you start flashing cameras at it, then it might do something.

__I: Is the parallel with Xenakis more about the underlying system, the physical structure, or the sound synthesis?__

C: It’s more about the questions he addressed in his ‘polytopes’, which were environments of light, sound, and architecture, tied together by electronic gestures across all three. Thinking about light temporally and sound spatially; and about his interest in masses or clusters of points – here, the optical and acoustic agents.

__I: Was this made specifically for CTM Festival here in Berlin?__

C: No, it was originally built in Spain, at LABoral in Gijón, as part of a residency. After that, it was shown in the Buckminster Fuller Dome of the Vitra Design Museum there. Now, it was rethought for the Stattbad space. The basic arching truss structures are there, but they were rearranged to fit the geometry of the pool. The sound is always reconsidered for the space as well.

__I: Marije, can you tell me a bit about the software and the sound synthesis?__

Marije: There are two sound sources. There are sounds being synthesized by the little white speaker/microphone units, which is programmed in Arduino. Apart from the units, there is also sound coming from a pair of big speakers which was composed with a multi-track editor by Chris [Salter] and Adam Basanta. The pre-recorded material is constantly being reprocessed or discarded. The acoustic units have little antennas which help them to communicate wirelessly to a computer running Python, and that sends all the sound information to SuperCollider. So I’m sending settings and triggers for the lights and sound from the computer, and then I get sent the data back from the units. The lights patterns are synthesized in a similar way, so I can program the light envelopes just like I would the sound, as waveform and duration.

C: It runs in two cycles, one which is more dramatic (‘chasing’) and another which is more ambiental (‘firefly’), so it’s quieter.

__I: Sofian Audry also worked on some of the software, right? Is this part of Sofian Audry’s PhD project at Hexagram?__

C: Part of it. He has different projects, but this is part of the research. He built the library for this project but he’s also using it for his own work.

__I: For the sound or the lights?__

C: He’s agnostic to that. It’s an open-source C++ library called ‘qualia’, which does machine learning, essentially; there’s figure trees built into it too and different types of processes. When we started to work on this project he showed me a kind of test of something, a very simple model of a sensor in an environment and the question is whether or not it understood what the environment was doing, if it changed its output. And then we started to talk and I said “Can we make it in a larger scale?” Not just one node, but many nodes. And so it eventually became what is now n\_polytope.
