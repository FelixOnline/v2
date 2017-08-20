---
title: >
  Infinite levels for free? Sweet!
subtitle: >
  Michael Cook talks procedural generation, and how it makes level creation easy
date: "2011-03-03 06:19:26 +0000"

# Attributes from Felix Online V1
id: "988"
old_path: /games/988/infinite-levels-for-free-sweet
aliases:
 - /games/988/infinite-levels-for-free-sweet
imported: true
comments:

# Article Taxonomies
categories:
 - games
tags:
 - imported
 - image
 - multi-author
authors:
 - felix
 - mtc06
highlights:

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201103030618-ks607-day4make.jpg"
image_caption: >

image_attribution: ""
image_attribution_link: ""
video_url: ""
---

_This is Day 4 of the IC.HACK tutorial series! To see the previous day's articles, click [Day 1 - Starting](http://www.felixonline.co.uk/?article=903), [Day 2 - AI](http://www.felixonline.co.uk/?article=934) or [Day 3 - Art and Sound](http://www.felixonline.co.uk/?article=965), or for the final installment click [Day 5 – Debugging](http://felixonline.co.uk/games/1022/game-over-for-ichack/)_

So we’re over halfway now. Yesterday we worked on the meat of the game, pushing in art assets, user interface and controls. Now we’ve got a pretty full game in front of us – not an award winner, but something that could be played around with for a few minutes or demonstrated to a friend. Today we solve the content problem, in what is probably one of the more technical of this week’s posts.

Procedural generation is what we’ll look at today, as a way of generating lots of levels for our game without having to do much coding ourselves. The phrase is often used to describe what is basically random generation, but true procedural generation has a method for creating things, a procedure. For weeks I’d been looking for a good map generator for dungeon-based games, and I finally found one researching today’s piece. So without further ado, let’s step through the process and see how it works for real.

Our dungeons are tile-based, as you can see when you play the game from the blockiness of the walls. So imagine an Excel spreadsheet; a grid of tiles that’s a hundred tiles squared. The first step is to throw wall blocks randomly onto this grid, so that roughly 40% of the map is wall. This is quite literally random - we don’t care where they go at this point.

Lots of procedures for generating things in this way start off like this, because the randomness is what makes the outcomes distinct. The rest of the method is precisely deterministic, so randomising the start is how we get variety in our outcomes. Now the clever bit – we’re going to cluster the walls together by doing the following: for each tile, if it has more than four walls next to it, we mark it as a wall in the next generation of the map. Otherwise we leave it blank.

Try and visualise that – it’s eroding the walls that are on their own, and thickening the walls that are close together. What you get, as you’ll see when you fire up today’s version, are maps with clusters of wall and twisty corridors – it’s sufficiently complex, but still identifiably dungeon-y. We actually do this a few times, and tweak the method to do a few extra things, but the basic algorithm is just those two steps – random scatter, and cluster together.

Of course, unless you’re planning to build a ‘[roguelike](http://en.wikipedia.org/wiki/Roguelike)’ game (replayable, tile-based RPGs) yourself, that algorithm isn’t going to help you. But whether you’re procedurally generating levels, weapons or stories the idea is often very similar; start with randomness and then use some heuristic (which might take a while to come up with) to slowly change the object into something you can actually use. It often takes experimentation – I run the algorithm four times to get our maps, but running it three times or five times produces too many useless maps, as I discovered. Practice makes perfect, but once you’ve cracked it the result is an infinite (for all intents and purposes) supply of maps. Which, for an indie game with no linear narrative, is exactly what we need.

Content generation is underexplored, but it’s becoming a bigger deal even in the world of academia, because the desire for bigger and better video games is outstripping developers’ abilities to supply it. Map packs and campaigns are getting smaller and smaller, and expectation is rising higher and higher. Even for a platformer, procedural generation gives people an incentive to come back to it, and better still it leaves you free to polish other areas.

For a contemporary example, [_Minecraft _](http://minecraft.net)is the success story of the decade for procedural generation. Like us, [Notch](http://notch.tumblr.com/) uses randomness to create an initial area (a special kind of randomness called Perlin Noise, which creates a kind of 3D plane that he samples). Then the second step, he uses heuristics to apply a global sea level, then add biomes, and tweak things that are too crazy (players may remember early maps included huge amounts of floating islands, which are now less common).

_Minecraft_’s world generation has been described as a game in itself, because the worlds are so captivating to explore and journey through._ IC.HACK_ isn’t quite there yet, but like _Minecraft _it’s provided our players with plenty to do, and only taken a few hours. Thanks must go to [Roguebasin](http://roguebasin.roguelikedevelopment.org/), a wiki full of articles about playing and creating roguelikes, for the map generation algorithm.

Be sure to [download the latest build](https://sites.google.com/site/felixgamesdaily/), as it’s getting closer to a fully-fledged game. Tomorrow is, predictably, about finishing. We add three new characters, more special moves and objectives, and reflect on the future. Tune in tomorrow, and email us at [imperialgamedev@gmail.com](mailto:imperialgamedev@gmail.com) – we want your feedback and ideas to add to a final edition of the game next week!
