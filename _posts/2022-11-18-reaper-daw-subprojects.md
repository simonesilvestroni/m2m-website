---
title: 'Managing albums with Reaper’s subprojects'
date: '2022-11-18 12:38:53'
last_modified_at: '2022-11-18 12:38:57'
author: 'Simone Silvestroni'
tags:
  - 'reaper'
  - 'daw'
  - 'music production'
  - 'mixing'
description: 'How I exploit the subproject functionality of REAPER to save time on mixing an album.'
syndication: yes
syndicate:
  - name: Mastodon
    url: https://indieweb.social/@m2m/109365987013518922
---
## Preparing an album for mastering

I'm currently mixing a 6-song album for the Cambridge-based band [Ember Rev](https://emberrev.bandcamp.com). Since the project is approaching the stage where I deliver the final stereo files to the master engineer ([Ian Shepherd](https://productionadvice.co.uk/about/)), an idea popped in: testing the album by checking the songs one after the other&nbsp;—&nbsp;interspersed with a 2-second pause&nbsp;—&nbsp;in a similar fashion as the master would be initially laid out in a DAW.

To do so, all the stereo mixes are loaded sequentially into a new project. The usual workflow for fixing issues would be to open the mix source session, apply the change, bounce the stereo master and re-import the wave file in the general album project, replacing the previous one.

To save time, enter [subprojects](https://www.soundonsound.com/techniques/reaper-subprojects).

## What is a subproject?

From REAPER's official manual:

> A powerful feature of REAPER is the ability to build a master project that uses any number of subprojects, rather than having to store all your individual tracks, folders and media items within a single project file. This has many potential applications but is likely to be especially useful for projects which require a very large number of tracks or for sound design projects where you might wish to use subprojects to build a single overall audio item.

## My REAPER project containing 6 subprojects

Although several ways to add a subproject to a REAPER project are possible, I hit the menu Insert and chose "Media file&hellip;" (Fig. 1).

{% include pattern-figure.html image="/assets/images/reaper-subproject-combo-01-add-project.jpg" alt="REAPER software showing an open Insert menu saying Media file" caption="Fig. 1 — Adding a project into another project" width="1024" height="640" %}

Once the project is selected, REAPER opens it, creates a proxy and starts rendering the stereo master (Fig. 2).

All my REAPER sessions have an _Audio files_ folder, collecting `.wav` files imported or recorded for the song. This time, only the entire proxy project (`.rpp` file) can be found under the folder.

{% include pattern-figure.html image="/assets/images/reaper-subproject-combo-02-rendering-project.jpg" alt="REAPER showing the render window" caption="Fig. 2 — A session rendering as a subproject" width="1024" height="640" %}

Once the project is rendered into my album _global_ session as a wave file, the edit cursor is positioned right at the end of the clip. I proceed to add a 2-second gap, similar to what's usually done in mastering, using a script (Fig. 3). With the edit cursor now moved by two seconds, I add the next project.

{% include pattern-figure.html image="/assets/images/reaper-subproject-combo-03-add-space.jpg" alt="A window menu in REAPER software, showing how to add a 2-second gap after a wave file" caption="Fig. 3 — Adding a 2-second gap after a song" width="1024" height="640" %}

Once all the six projects are loaded as rendered proxy wavefiles, I see the whole album in its glory (Fig. 4).

{% include pattern-figure.html image="/assets/images/reaper-subproject-combo-04-final-project.jpg" alt="REAPER arrange window, showing the six song forming the album" caption="Fig.4 — The entire album in the project containing 6 subprojects" width="1024" height="640" %}

It's now super easy to listen, measure and test each song as part of an album. Inconsistencies are easier to spot this way. Testing loudness is also a piece of cake with REAPER SWS loudness functionality (Fig. 5).

{% include pattern-figure.html image="/assets/images/reaper-subproject-combo-05-test-loudness.jpg" alt="REAPER showing the Loudness window from the SWS menu, indicating the loudness values for the six songs" caption="Fig 5. — Testing loudness for the six songs of the album" width="1024" height="640" %}

## What's the advantage of having subprojects into one big project?

Whenever I spot a mistake, or something that needs changing, I simply double-click on what appears to be a normal wavefile. Instead of the default reaction (opening the item's properties), REAPER opens the _original mix session_ for that song&nbsp;—&nbsp;in all its multitrack glory&nbsp;—&nbsp;in a new tab. At this point, changes can be applied to the original. 

Upon hitting save, REAPER refreshes the rendering of the session _and the proxy_ in my "super project". I can now close the song and go back to my album project, double checking the changes within the context of the album.

## Learn more about subprojects

Kenny Gioia explaining subprojects with his usual down-to-earth clear insights:

{% include pattern-video.html id="S0k7ph7Nnbo" %}

A nice example of how to use subprojects in game audio, from Akash Thakkar:

{% include pattern-video.html id="UOodjB31a3g" %}

## Conclusions

I love this functionality. In this case, I'm using subprojects to save time but it's useful for sound design, very long sessions and/or containing a large number of parts and tracks. In fact, months ago I worked to a production where subprojects were used for drums in a session with many vocal tracks and a multitude of percussion items. It saved processor resources to the point my complex template ran at 12% of CPU capacity.