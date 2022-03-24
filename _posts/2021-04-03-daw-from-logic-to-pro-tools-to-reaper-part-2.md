---
title: 'Switch DAW: Logic to Pro Tools to REAPER (Pt 2)'
date: '2021-04-03'
last_modified_at: '2021-11-08 18:29:03'
categories:
  - 'Audio software'
tags:
  - cockos
  - reaper
  - apple
  - logic pro x
  - avid
  - pro tools
  - daw
  - sound design 
  - music production
  - game audio
description: "In 12 months I've managed to revolutionize my workflow, twice. Here's part 2 of how I migrated DAW, from Logic to Pro Tools, and finally to REAPER."
excerpt: "How REAPER improved my music workflow, part 2: customization, community, stock plug-ins."
---
In **[part 1](/blog/daw-from-logic-to-pro-tools-to-reaper-part-1/)** I discussed:

1.  Cost
2.  Multi-platform
3.  A different workflow

## Benefit 4: Customization

### Themes

Pretty much everything can be customized, down to the look & feel. Like [its creator](https://en.wikipedia.org/wiki/Justin_Frankel){:target="_blank" rel="noopener"}‘s first successful software, **Winamp**, REAPER supports themes. Though it’s not my main interest, there are plenty of excellent (and awful) [skins](https://stash.reaper.fm/tag/Themes) out there.

### Scripts & macros

This is a huge one for me. REAPER has a [scripting engine](https://www.reaper.fm/sdk/reascript/reascript.php). It’s a DAW that can be **manipulated through programming**, whether it’s Python, Lua, or its own open source language (EEL). Even without being a coder, a lot can still be achieved with the myriad of stock commands (_actions_), shortcuts and mouse modifiers alone, not to mention the possibility of creating multi-layered **custom actions** (basically: macros).

{% include pattern-figure.html image="/assets/images/daw-reaper-custom-actions.png" caption="The actions window, featuring my current custom macros at the top" width="768" height="339" %}

**REAPER is fast** and allows access to each and every function by hitting the <kbd>?</kbd> shortcut, which opens the **actions list**.

### Making the DAW work my way

Personal example: through the creation of custom actions, I embedded some of my most used workflows from Logic and Pro Tools. I even **applied the same keyboard shortcuts** in several cases, so that I didn’t have to “rewire” my muscle memory. Custom toolbars can be created as well. As opposed to the always-on main toolbar, which holds frequently used commands, I recall a **floating toolbar** with a shortcut. It has actions and macros — in the form of buttons — that I only need sometimes. Once I’m done, it hides with the escape key. I’m scratching the surface here, the possibilities are endless.

{% include pattern-figure.html image="/assets/images/daw-reaper-custom-toolbar.png" caption="A floating toolbar I created, containing some of my custom actions" width="768" height="138" %}

After less than two weeks using REAPER, I have, among other things:

<h4 class="text-uppercase">Custom screensets</h4>

Multiple [windows setup](https://reaperblog.net/2020/05/how-to-use-screensets-in-reaper-2/){:target="_blank" rel="noopener"}, to efficiently **manage different stages of production**.

<h4 class="text-uppercase">Master channel strip</h4>

Always visible, **docked to the left** of the arrange window for a quick check.

<h4 class="text-uppercase">Volume and pitch clip gain</h4>

Easily available on each item, for fast and creative editing.

<h4 class="text-uppercase">Custom shortcuts</h4>

They mimick the ones I got used to in Pro Tools or Logic.

<h4 class="text-uppercase">Track manager & media explorer</h4>

Shortcuts for showing/hiding these useful windows, as docked sidebars.

<h4 class="text-uppercase">Custom floating toolbar</h4>

A simple keystroke that allows to perform multiple tasks at the push of a button (the icons and the labels are customizable).

<h4 class="text-uppercase">Quick and efficient custom actions</h4>

By hitting a single key, I create fades that would apply from/to my current mouse cursor position, without placing the playhead first. Also: explode a stereo file in two mono tracks, and viceversa.

### Look & feel

The repository for all custom themes — as well as extensions, scripts and more — is the [REAPER stash](https://stash.reaper.fm/). Talking about aesthetics, I’m not a fan of the many themes trying to recreate the GUI of other DAWs. I keep alternating a design called _Smooth_ with the default theme for v6.

{% include pattern-figure.html image="/assets/images/daw-reaper-session.jpg" caption="REAPER running the theme Smooth v6" width="768" height="480" %}

Incredibly detailed and well crafted, _Smooth_ was created for free by a guy who only asks to be [supported on Bandcamp](https://forum.cockos.com/showthread.php?p=2219276){:target="_blank" rel="noopener"}, where he published a slightly bizarre but captivating sci-fi concept. Which brings me to the next benefit. 

## Benefit 5: community

Cockos is [made of two programmers and a few collaborators](http://cockos.com/team.php){:target="_blank" rel="noopener"}. Remarkably, they’ve managed to create **a product that is actually close to their customers**. They run a thriving [forum](https://forum.cockos.com/forumdisplay.php?f=20){:target="_blank" rel="noopener"} where, besides looking for help and support, people who use REAPER can offer ideas for new features or suggestions about fixing something that’s not ideal. As someone aptly wrote in the forum:

> Cockos is like a family-owned small business. They’re amazingly talented and hard working to compete with other DAW companies that hire whole slews of programmers and graphic designers.

Being **open to third-party interventions**, the obvious brilliant result is that many talented people can create plug-ins, skins and extensions. With such an architecture, REAPER doesn’t depend on a centralized, slow and distant big corporation. Besides the mentioned Stash, [ReaPack](https://reapack.com/){:target="_blank" rel="noopener"} and the [SWS/S&M extension](https://www.sws-extension.org/){:target="_blank" rel="noopener"} are other amazing places where to find brilliant add-ons. These are all **open source** projects hosted on Github.

### A personal experience: X-Touch One

A few months ago, I bought a USB/MIDI controller, the **X-Touch One** by Behringer. It’s got a single motorized fader and a few added possibilities. Well built and cheaper than its competitor, Presonus' Fader Port.

{% include pattern-figure.html image="/assets/images/xtouch-one.jpg" caption="Behringer X-Touch One" width="768" height="737" %}

Like other tools who adopts the Mackie protocol though, the X-Touch One handles 8 tracks at a time, despite being built for just one. The resulting problem is that **I couldn’t change track in the DAW and immediately see it reflected in the controller**. Having to use its physical buttons to move up or down my tracks was so frustratingly slow that I ended up using it within Pro Tools as a mere automation helper, rather than **a quick mixing tool as I intended**.

On a Gearspace thread, plenty of producers were complaining about the same issue. Even someone from Behringer was involved. At a certain point, a user pointed out that in the REAPER’s forum there was a solution, specific to that DAW. That’s how I found CSI, **a custom-created extension for external controllers**. Again: it’s open source and hosted on Github.

Downloaded for free, I [installed it and configured in minutes](https://github.com/GeoffAWaddington/reaper_csurf_integrator/wiki/Installation){:target="_blank" rel="noopener"}. Now, when I select a track with the mouse in REAPER, that same track is automatically reflected in X-Touch One, ready to be worked fast with fader, pan, solo, mute and more. This **spirit of community** and the admirable level of flexibility are impossible to find within corporate-made software.

## Benefit 6: Stock plug-ins

The question of stock plug-ins is a neverending debate in the music production business. I never fully understood why, or maybe it’s not interesting to me: I always thought that software is a _personal choice_. Basically the questions are:

- are stock plug-ins okay to use?
- can I use them to produce good music or shall I buy the commercial ones?

I had decided a while back to settle on [very few third-party plug-ins](/uses/), and learn them in depth. I was using Logic at the time, and my intent was to be as **platform agnostic** as possible. Now that I’ve experimented with Cockos’ native FXs, I can safely say that I don’t need anything new for the foreseeable future. My existing commercial plug-ins, plus the REAPER integrated arsenal, is more than enough. On the topic, there’s also a video series by the great Dan Worrall.

{% include pattern-video.html id="3OoVnTO3AB4" %}

___

In **[part 3](/blog/daw-from-logic-to-pro-tools-to-reaper-part-3/)** I’ll be discussing:

7.  Open architecture & development cycle
8.  Efficiency

Plus, a **bonus section** about working with clients and colleagues, and a little bit about integration with different software.