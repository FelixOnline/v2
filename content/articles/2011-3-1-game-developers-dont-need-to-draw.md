---
title: >
  Game developers don’t need to draw...
subtitle: >
  Michael Cook can’t draw pictures or compose music, but he can still make games
date: "2011-03-01 21:07:10 +0000"
author_id: "felix"

# Attributes from Felix Online V1
id: "965"
old_path: /games/965/game-developers-dont-need-to-draw
aliases:
 - /games/965/game-developers-dont-need-to-draw
imported: true
comments:

# Article Taxonomies
categories:
 - games
tags:
authors:
 - felix
highlights:

# Homepage control params
headline: true
featured: true

# Image metadata
image_path: "http://felixonline.co.uk/img/upload/201103012105-ks607-day3make.jpg"
image_caption: >

image_width: "490"
image_height: "490"
image_attribution: ""
image_attribution_link: ""
video_url: ""
---

_This is Day 3 of the IC.HACK tutorial series! For the previous articles click [Day 1 - Starting](http://www.felixonline.co.uk/?article=903) or [Day 2 - AI](http://www.felixonline.co.uk/?article=934), or for the next installment click [Day 4 - Maps](http://www.felixonline.co.uk/?article=988)._

As you saw yesterday, if you took a look at our prototype, _IC.HACK_ now has some visuals. We’ve looked at building prototypes and getting the basic challenges out there for playtesters to get on with. What else is important for small-scale game design? Today we’re doing ‘look and feel’ and the first half of this is the art and music. No doubt, we’ll probably be nodding our heads to yesterday’s thoughts on ‘shortcuts’ too, because most of us are in no position to take on the challenge of art ourselves.

As indie developers, you have a mixed hand. Your weaknesses are a lack of funding, time and sometimes technology. But one of your strengths is that people want to play your game. Gamers like games, and they like ‘one of their own’ having a go, and that means that art doesn’t have to be your top priority. But no one wants to stick with those rectangles forever, so what can you do?

Assuming you, like me, have all the artistic ability of a paralysed kangaroo, you don’t want to spend time drawing and composing your own resources. Where do you go to look? The key resource for this sort of thing is TIGSource, an independent game development community who are as friendly as they are informative. Their [Assemblee competition](http://tinyurl.com/gamedev3) resulted in a vast collection of free art and music, which _IC.HACK_ borrows from hugely, but their forums are also full of artists and composers willing to help people out for free. They also can help point you the direction of larger pools of art and music available to games developers.

This might lead you onto the biggest visual problem you’ll face as a developer - animation. Animation complicates everything, for so many reasons. First, you often can’t use animation drawn by other people, because of scale, speed or position problems that might not be compatible with the rest of your game. As for creating your own, animation is probably the hardest thing you could attempt yourself. Not only is there the problem of creating the initial art, but synchronising multiple frames as well can be a nightmare. You’ll notice my solution in _IC.HACK_ is a pretty simple one – I don’t use animation. It means _IC.HACK_ takes a hit visually – attacking enemies becomes a rather nasty flash of a sword on the screen, and damage is indicated by fading blood marks or flashes of red. But it works, and it saved hours of fussing over placement and representations. [Game Maker](http://www.yoyogames.com/make) makes it easy to include animation, but the problem of creating it remains. Ask yourself if your game really needs animation before trying to go ahead with it. And if it does, try to find ways you can lessen your reliance on it.

So we’ve got our look, as well as some great sounds and music from the talented [TIGSource](http://www.tigsource.com/) community. Now we need the feel – and by that, I mean controls, interface and so on. People dedicate their entire academic lives to researching human interactions with computers, so believe me when I say there’s no limit to the stuff you can read about this. But for now, common sense reigns supreme. Let’s look at _IC.HACK_ and see what we’ve got.

First, know the theme. _IC.HACK_ is simple and arcade-like, so we’ve stuck with arrow keys for movement and just two keys for actions – attack, and special attack. Things like item use and other world interaction is automatic, done on collision with items. Games like _Dragon Age_ get away with much richer interfaces, but they’re packing in more depth. We want to entertain our players for minutes rather than hours, so simplicity is best. Every extra key you add is a new function your player has to learn – bear that in mind.

Second, play the game yourself. You should be doing this anyway, but you’ll quickly realise what information is missing from your UI when you can’t find it yourself. Initially,_ IC.HACK_ only displayed the current health, not the maximum. But that made it impossible to know when to heal yourself, so that quickly got changed. Playtesters will pick up on these things too, but many will be so simple that you should be able to catch them yourself.

Third, go listen to developers. Plenty have written about UI design, and it’s all there on [Gamasutra](http://www.gamasutra.com/), or in developer commentaries. Common themes that emerge in these are the use of visual metaphors (_IC.HACK_ has the classic heart next to the health – obvious, but helps catch the player’s eye when their focus is elsewhere on the screen) and colour-coding. The latter is quite underrated; lots of games rely on white text and blue boxes to convey information, but the use of colour can help gamers react faster. Red text draws their eyes to danger, for instance. Green colours have been associated with healing for decades of platformers and fighters.

This version of _IC.HACK_ introduces the meat of gameplay, with special moves, proper sound and music, better visuals and camerawork. We’re now halfway through our tour of small-scale game development! Make sure you check out today’s build and get in touch at [imperialgamedev@gmail.com](mailto:imperialgamedev@gmail.com).
