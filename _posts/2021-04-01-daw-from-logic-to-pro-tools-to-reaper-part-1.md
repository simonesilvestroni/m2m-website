---
title: '8 benefits of switching DAW: from Logic to Pro Tools to REAPER (Part 1)'
date: '2021-04-01'
last_modified_at: '2021-11-08 19:19:33'
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
description: "Over the last year I've managed to revolutionize my workflow, twice. Here's part 3 of my account of how I migrated DAW, from Logic to Pro Tools, and finally to REAPER."
excerpt: "In the past twelve months I’ve managed to revolutionize my music software workflow, twice. Here’s part 1 of a brief account of my switch."
---
<p class="lead">{{ page.excerpt }}</p>

**TL;DR** — In this series, I describe the 8 major **benefits that REAPER brought to my music production workflow**, and how they pushed me toward a full switch from Pro Tools.

##### Part 1

1.  Cost
2.  Multi-platform
3.  A different workflow

##### Part 2

4.  Customization
5.  Community
6.  Stock plug-ins

##### Part 3

7.  Open architecture & development cycle
8.  Efficiency

---

**DISCLAIMER** — This article reflects my own personal opinions, which are related to how I use a DAW. It’s not meant to judge any of these software. As a matter of fact, I still own and like both Logic and Pro Tools, for their own peculiarities. This is not a tutorial.

---

After starting out with Cubase in 1995 and using it until v4, I moved to eMagic’s Logic in 2002. Transitioned to Apple’s [Logic Pro X](https://www.apple.com/logic-pro/){:target="_blank" rel="noopener"} a bit late, I stayed there until last year. All in all, **it’s been 18 years with Logic**.

{% include pattern-figure.html image="/assets/images/logic-platinum.jpeg" caption="2002: Logic Audio Platinum 5" width="1280" height="969" %}

I used plenty of other audio software over time, especially during my years as a game sound designer, and had always known how **Logic was never the best choice for post-production**. Indeed, after a problematic job last year, I finally jumped ship and paid Avid for 12 months of [Pro Tools subscription](https://shop.avid.com/ccrz__ProductDetails?viewState=DetailView&sku=DYNA20000&isCSRFlow=true&portalUser=&store=shop&cclcl=it){:target="_blank" rel="noopener"}. Despite being already familiar with the program, it substantially changed my workflow for the better.

I see it as a near-perfect computer metaphor for someone who **learned the craft in the analog world**. The management of the I/O, the way it handles sends and returns, and above all, the powerful and fast audio editing. Yet, there’s something about it that always felt awkward to me. I didn’t enjoy its distinct lack of personalization, the difficult compatibility, and the **unpredictability software-wise**. Too many random crashes and obscure error messages that never quite stood up to its price.

{% include pattern-figure.html image="/assets/images/daw-pro-tools-error.png" caption="Pro Tools error message" width="1218" height="556" %}

Now, with my subscription about to expire, and irritated by the idea of another hefty payment during a harsh pandemic, I decided to jump ship, again.

## Enter REAPER

Over the past ten years, I’ve been following several professionals who switched to REAPER by Cockos. Moreover, during my recent **rekindling with game audio**, I’ve discovered that REAPER has become a [_de facto_ standard in that industry](https://www.reddit.com/r/GameAudio/comments/4wpqtt/why_is_reaper_recommended_so_much_for_game_audio/){:target="_blank" rel="noopener"}.

{% include pattern-video.html id="F2KuotvUaQU" title="One of many videos about REAPER in game audio" %}

After the Wwise certification, learning REAPER was next in my pipeline. I thought: let’s try it now, and see if it can successfully replace Pro Tools and save me some money too.

## Benefit 1: Cost

Initially, I was seriously attracted by two factors. In order of importance:

1. The **open architecture**, which leads to endless customization possibilities and translates to efficiency.
2. Cockos’ **business** **model**.

REAPER is not free. The trial lasts for two months, after which the software keeps working anyway, fully functional. As Cockos says: it’s _up to your conscience_. No iLok, no authentication required. If you use the software, **pay for it**. They trust you to do the good thing. As a matter of fact, I tried it for about a week: that’s how long it took me to decide. There are two tiers available: _discounted_ and _commercial_, depending on how you use it — a very **sensible distinction**.

<table class="table table-responsive mt-4 mb-5">
  <thead>
    <tr>
      <th scope="col" class="w-20">License</th>
      <th scope="col" class="w-70">Description</th>
      <th scope="col" class="w-10">Cost</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Discounted</td>
      <td>You are an individual, and REAPER is only for your personal use, or you are an individual or business using REAPER commercially, and yearly gross revenue does not exceed USD $20,000, or you are an educational or non-profit organization.</td>
      <td><code>$60</code></td>
    </tr>
    <tr>
      <td>Commercial</td>
      <td>Every other case.</td>
      <td><code>$225</code></td>
    </tr>
  </tbody>
</table>

Each license includes **two major releases**. For instance, I bought it now, at v6.x, which gives me free updates until v7.99 included. To put things in perspective, Logic Pro X costs `€199`, _no exceptions_. If you’re in REAPER’s discounted tier, it takes 8 major releases to reach the amount of money Apple charges. That [could translate to many years](https://en.wikipedia.org/wiki/REAPER#Version_history){:target="_blank" rel="noopener"}.

I won’t go down the rabbit hole of Avid’s pricing policy. As a frame of reference, **Pro Tools regular is `€340` per year** (including VAT). Avid also offers a “perpetual” license at **`€682`**: it doesn’t include all the goodies reserved to subscribers, it only comes with one year of updates and it’s so well hidden in the website, I suspect they’ll remove it sooner or later. Just consider this: over the next ten years — the average it takes REAPER to release two full major updates — I would have spent up to **`€3400` on Pro Tools** alone. Pandemic or not, I seriously struggle to see why would I want to pay that much money if I can do the same things with another software.

## Benefit 2: Multi-platform

I know, Apple isn’t charging for Logic updates (so far), likely because they make their money off the hardware they sell. Instead, I can install my copy of REAPER on **Mac, Windows or Linux**. If I need to, I can have it on all three at the same time, using the same serial I already bought.

### Side note

Since the **video game industry** is understandably bent towards Windows, it’s clear to me why a multi-platform capability is one of many reasons why REAPER became a standard. Given how easy is to **export and re-import all the settings and customizations**, I can easily keep my REAPER versions on macOS and Windows in perfect sync.

{% include pattern-figure.html image="/assets/images/daw-reaper-preferences.jpg" caption="Import and export REAPER’s configuration" width="1438" height="960" %}

### Tracks

This was a biggie for me. I was stunned to discover that **REAPER doesn’t have track types**. In other words: it’s _track agnostic_. Despite my initial WTF moment, I’m now absolutely in love with the concept. In all the other DAWs I know, when I create new tracks I must _at least_ select a type, along with some other information. Usually, I have to choose whether the tracks is:

1.  Audio
2.  External MIDI
3.  Virtual MIDI instrument
4.  Auxiliary bus
5.  VCA
6.  Mono
7.  Stereo

{% include pattern-figure.html image="/assets/images/daw-pro-tools-new-tracks.jpeg" caption="Create new tracks in Pro Tools" width="500" height="179" %}

{% include pattern-figure.html image="/assets/images/daw-logic-pro-x-new-track.png" caption="Create new tracks in Logic Pro X" width="1262" height="654" %}

Imagine having to double click in the track area and **not worry about any of the above**. That’s REAPER. I double click and I have a track. Here, _a track is just a track_: I can decide later on its routing, based on what I need. Of course, I can add multiple tracks at once and more if I want, but the basic action is **built for speed**.

{% include pattern-figure.html image="/assets/images/daw-reaper-create-new-tracks.jpg" caption="REAPER: create new track(s)" width="694" height="372" %}

Drag an audio file, whether mono, stereo or multichannel, and the track accepts it; do the same by dropping a MIDI file. Without going in too deep: it also doesn’t care if the audio files are at different sample rates. **Later, you can decide** if it has to be mono or stereo, assign outputs and/or sends and whatnot. Also, and this is utterly cool: I can have a mono audio, a stereo (or surround) audio and a MIDI sequence **all in one track**:

{% include pattern-figure.html image="/assets/images/daw-reaper-multi-track-scaled.jpg" caption="A track in REAPER holding a MIDI part, together with stereo and mono audio recordings" width="2560" height="808" %}

It’s a different metaphor, and it leads to a _whole new workflow_. It’s become an unbelievably efficient **timesaver** to me. Reproducing all my Logic or Pro Tools templates, including creating groups of track presets first, took me less than thirty minutes.

### Routing

There are several ways to **manipulate the signal flow** in REAPER. Each one serves a purpose depending on the situation. For instance, clicking the route icon in a track the following appears:

{% include pattern-figure.html image="/assets/images/daw-reaper-routing-track.jpg" caption="The routing window from a track in REAPER" width="1416" height="536" %}

For **sends and returns**, I can either use the basic routing window pictured above, or drag the route icon from one track onto another: the cursor changes into a patch cable, symbolizing the connection.

{% include pattern-figure.html image="/assets/images/daw-reaper-drag-send.jpg" caption="Create a send from one track to another by dragging the route icon (“IO” in my skin) to a track" width="1339" height="1206" %}

I can also select **multiple tracks** at once, hold SHIFT and drag from the same icon to re-route them all. Technically, all these actions create a bus/aux, but again, I don’t have to worry about it. I usually assign a custom color to my busses so that they’re easily recognizable to me, and work it out later. The fastest way to create a bus is to **create a folder**. It’s as easy as clicking the folder icon in the track: the ones below will indent and be instantly re-routed. Once a folder is created, a “shadow region” is generated at the top level, so that when the folder is collapsed its content is still visible.

{% include pattern-figure.html image="/assets/images/reaper-folder.jpg" caption="A folder in REAPER, with its <em>shadow region</em>" width="2476" height="590" %}

The **routing matrix** window can be used to apply elaborated signal flows to the whole song. As an example, I always send my mix to four groups (see: [Brauerizing](https://brauerizing.wordpress.com/)) depending on the material; these A to D groups feed a mix bus where I apply my top-level processing. Finally, it goes to the master output, where there are only meter readings. In addition, I have my external DAC for headphones, routed to output 7-8 of my interface. I can do all this _in seconds_, as demonstrated by Kenny Gioia in the following video:

{% include pattern-video.html id="oAfF6lNlMQk" title="Kenny Gioia is THE man" %}

### Grouping

Similarly to Pro Tools, I can group tracks together, for mixing or editing. However, REAPER supports _temporary groups_ too, as Logic does. Select multiple tracks, **quickly manipulate them** — volume, pan, solo, mute, etc — and unselect to go back to normal. It works in the track panel as well as in the mixer, and it’s awesome. Same as for the routing, there is a **grouping matrix** window, where more complex connections can be applied quickly to the entire project.

{% include pattern-figure.html image="/assets/images/daw-reaper-grouping-matrix.jpg" caption="REAPER grouping matrix" width="1442" height="838" %}

___

In **[part 2](https://minutestomidnight.co.uk/daw-from-logic-to-pro-tools-to-reaper-part-2/)**, I’ll be discussing:

4.  Customization
5.  Community
6.  Stock plug-ins