---
title: >
  When in doubt, leave it out!
subtitle: >
  Michael Cook talks making shortcuts and artificial intelligence
date: "2011-02-28 20:45:00 +0000"
author_id: "felix"

# Attributes from Felix Online V1
id: "934"
old_path: /games/934/when-in-doubt-leave-it-out
aliases:
 - /games/934/when-in-doubt-leave-it-out
imported: true
comments:

# Article Taxonomies
categories:
 - games
tags:
 - games
 - image
authors:
 - felix
highlights:

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201103010939-ks607-gamesmik.jpg"
image_caption: >

image_width: "482"
image_height: "516"
image_attribution: ""
image_attribution_link: ""
video_url: ""
---

_This is Day 2 of the IC.HACK tutorial series! To see yesterday's article click [Day 1 - Starting](http://felixonline.co.uk/?article=903) or for the next installment click [Day 3 - Art and Sound](http://felixonline.co.uk/?article=965)._

I hope you got a chance to play our prototype version of [_IC.HACK_](http://sn.im/ichack) yesterday. Our [second build](https://sites.google.com/site/felixgamesdaily/home/day-2) moves the game on considerably, adding some simple enemy AI and a chance to finally get success and failure in. So let’s pick up where we left off, with our prototype game, and see what next steps we can take to flesh things out.

Chances are you’ll need some kind of AI in your game. Not all games have opponents, per se, but even games like _SimCity_ or _Bejewelled _use AI techniques to provide a challenge for the player. Today’s golden rule is ‘the Shortcut’, because as anyone from the Computing department will tell you, there’s nothing more important in the world of programming software than finding a quick way of doing something complicated.

We’re going to use our _IC.HACK_ RPG as a way of showing where you can cut corners. If you’re following my advice and using the free and friendly program [Game Maker](http://yoyogames.com/make), there are plenty of tutorials for AI too, so be sure to check them out.

For our RPG we’ll need two key behaviours - our monsters need to ramble around on their own, and they need to attack the player.

First, the walking around. There are lots of ways we could do this - get the enemies to find paths through our levels, or searching behaviours, patrols and so on. Hopefully, our player will be more interested in hacking the enemies to pieces, so instead of these options we’re simply going to choose a random direction for each enemy, walk in it for a few seconds, and choose another direction. Game Maker has timer objects, and most APIs available to programmers provide timing details on how long it’s been since the last frame, so we can use this information to make enemies wander for a few seconds, and then switch direction and reset their timer.

You’ll see this behaviour when you launch today’s build. It doesn’t look clever, but in a room of enemies the player will be concentrating more on staying alive and navigating the room. As long as it holds up, it’ll do – we’re not looking to take on _Crysis_’ AI team here.

For the attack AI, there are even more options. There are dozens of articles written every month on triple-A combat AI, with group tactics and realistic decision-making. All we really need is one rule – attack the player if you’re near enough to do so. Simple, but good enough for games like _Diablo 2_ and easily expressed in tools like Game Maker. Before the enemy decides to continue its random walk, it checks where the player is. If you can remember enough Year 9 mathematics, Pythagoras should let you calculate how far away the player is from the enemy; if the distance is short enough, the enemy can attack instead of moving on its walk.

You’ll see later how this stop-and-fight mechanic plays into our control system for the player, too. Of course, if you’ve got a technical bent you might wonder if we’re doing too many calculations. What if we want three thousand enemies in the game world, can they all do that check in the time it takes to calculate the next frame?

Well, perhaps not. In the real world, there are loads of fascinating ways we can get around this. For instance, Introversion’s upcoming espionage game _Subversion _uses heat maps to help the AI. Instead of the enemy checking where the player is, the player emits ‘heat’, or some kind of value into the game world. Only enemies that are close enough to sense the player’s presence do the calculations for distance.

But that brings us back to the theme of shortcuts – even if we chuck a few dozen enemies down, the simplicity of our game should mean it’s still runnable even on low-end machines. So forget the next-gen, benchmarked future for your indie blockbuster, and just focus on something that works right now. Checking every enemy, every frame? That does the job.

These two behaviours – wander randomly, attack when possible – give us enough AI to play the game as a real challenge. It won’t be particularly skilful to beat, but with a health bar and the right number of enemies we can make it harder for the player to survive.

The shortcut rule extends beyond just AI, and should touch everything you do in your game. As you build up beyond the initial prototype, think about what can be cut down, or cut out altogether. If in doubt, it’s better to leave something out for now and think about putting it in later, because it’ll give you better feedback from the people who play your game.

Don’t forget, you can contact [imperialgamedev@gmail.com](mailto:imperialgamedev@gmail.com) with feedback on the articles and the game, or questions about development (I’ll do my best, no promises!) [Today’s build](https://sites.google.com/site/felixgamesdaily/home/day-2) of_ IC.HACK_ cheats a bit – it includes our basic artificial intelligence techniques, but also has some artwork as a sneak peek into tomorrow’s build. Play around, try and notice what the AI is doing and think about what shortcuts you could add to make the AI seem smarter.
