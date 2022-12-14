---
title: 'Switch DAW: Logic to Pro Tools to REAPER (Pt 3)'
date: '2021-04-06'
last_modified_at: '2021-11-08 17:33:58'
author: 'Simone Silvestroni'
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
description: "In 12 months I've managed to revolutionize my workflow, twice. Here's part 3 of how I migrated DAW, from Logic to Pro Tools, and finally to REAPER."
excerpt: "How REAPER improved my music workflow, part 3: open architecture, development cycle, efficiency."
---
In [**part 1**]({{ site.url }}/blog/daw-from-logic-to-pro-tools-to-reaper-part-1/) & [**part 2**]({{ site.url }}/blog/daw-from-logic-to-pro-tools-to-reaper-part-2/) I discussed:

- Cost
- Multi-platform
- A different workflow
- Customization
- Community
- Stock plug-ins

## Benefit 7: Open architecture & development cycle

Updates and fixes are relased regularly. [Dan Worrall’s video series](https://youtu.be/3OoVnTO3AB4) also confirmed the agile way the software is maintained, with maximum attention to its community.

In a video about ReaComp (stock compressor plug-in), he pointed out a slight defect in the range of a slider. This is what happened, just _a week later_:

{% include pattern-figure.html image="/assets/images/dan-worrall-reaper-comp.jpg" caption="REAPER compressor received a prompt update after a minor defect was pointed out on YouTube" width="768" height="555" %}

## Benefit 8: Efficiency

The last point would need a whole other slew of posts to be properly explained. I’m going to make a simple list of the main aspects, explaining the major improvements that REAPER brought to my personal workflow.

Speed
: The newest version opens in about 4.5 seconds on my 6-year-old laptop. Rendering, editing and pretty much everything I do in REAPER is lightning fast.

Light-weight
: The installer is around 15 megabytes, while the single executable application on macOS is 130 megabytes. Logic is 2 gigabytes, while Pro Tools is around 3.5 gigabytes.

Sub-projects
: A project can include entire other projects, allowing to divide big sessions in chunks.

Render Matrix
: Add many regions to a render queue, which can be taken care of later. Also: _render presets_, great for exporting mono/stereo versions with a multitude of different customizations.

Powerful batch editor
: Together with the previous two points, it adds to the reasons why REAPER is the go-to DAW for game sound designers.

Snapshots
: Save different mix versions and recall each one with the stroke of a key.

Region-based non-destructive FX processing
: In addition to the “normal” track-based one.

Record FX on the way IN
: This feature translates to an early commit to a sound, if someone wishes so.

Tabbed sessions
: Open multiple full-on sessions, each in its tab, and switch back and forth. Copy and paste regions, tracks and more from one to another.

Quick built-in edits
: Reverse, peak normalize, loudness normalize, you name it.

Actions list
: Open it with the keystroke <kbd>?</kbd> then filter by typing in the search box and find anything in seconds. The list includes Cockos’ own scripts, third-party add-ons and all the personal custom-created ones.

Markers and regions
: Jump to sections, move entire blocks around, make selections, split, loop certain areas, export and render. Super flexible and powerful.

Automatic colors
: It might sound minor, however to me this is a godsend. I always color-code everything: tracks, items, markers and regions. I used to do the same in Logic and Pro Tools, but in REAPER it’s a different world. An SWS extension allows to set rules for automatic color-coding of everything, based on several patterns. Now, whenever I name a track with a specific pattern, the track (and its items) get the color I want. Same for markers and regions. Huge timesaver.

Metadata
: Integrated support for writing and reading advanced metadata. Also useful when it comes to importing markers from other sessions or from other DAWs.

Docking
: Pretty much every single window in REAPER can be docked. The position on the screen can be customized too. Coupled with the amazing screenset functionality, this allows the software to morph into whatever is the best interface for the task.

## Conclusions

### Working with others

Switching DAW is a _dreadful task_ for many. If you work within a team of people where the flow is based on Pro Tools, that’s something to consider. I’m flexible on this topic, and love to learn and improve my skill set. I currently work by myself, and a majority of my current collaborators uses Logic. Nonetheless, I managed to get a relatively old and cheap Pro Tools 12.5, which I had to install on Windows 10, as that version isn’t supported after macOS High Sierra. I decided to keep it for session legacy and compatibility with clients.

### My current setup

I currently use REAPER for almost everything, writing music, producing, editing audio, batch processing, mixing, stem rendering, mastering.

It’s an unbelieavably powerful, fast and flexible piece of software, I regret not having tried it sooner.

### Bonus: other software

I do plan to try REAPER and Logic, or Reason, in sync: if the ventilation system of my machine doesn’t catch fire, I’d like to have the opportunity. For anything related to restoration, advanced audio editing and clean-up I set [iZotope RX](https://www.izotope.com/en/products/rx.html) as my default external editor. In this case, the workflow is:

- right-click on an audio region
- edit in external editor
- fix it in RX
- save it and go back to REAPER
- done

---

Thanks for reading. I leave you with a video by American composer, producer and sound designer [Nick Peck](https://nicolaspeck.com/), who explains in 18 minutes his 11 reasons to switch from Pro Tools to REAPER:

{% include pattern-video.html id="BKCvJsG-zrQ" %}