---
title: 'I mixed ‘In Super-8’ by Ember Rev using Reaper’s subprojects'
date: '2023-03-17 12:38:53'
last_modified_at: '2023-04-08 14:50:44'
tags:
  - 'audio software'
  - 'dan ecclestone'
  - 'case study'
  - 'cockos'
  - 'daw'
  - 'ember rev'
  - 'folk rock'
  - 'independent music'
  - 'indie'
  - 'izotope rx'
  - 'mix'
  - 'music production'
  - 'music release'
  - 'reaper'
  - 'uk'
description: 'How I exploited the subproject functionality in REAPER to save time and processing power while mixing a rework of Ember Rev’s debut album.'
featimage: true
thumbOnly: true
permalink: /work/music-production/mix-ember-rev-reaper-subprojects/
syndication: yes
syndicate:
  - name: Mastodon
    url: https://indieweb.social/@m2m/109365987013518922
---
{% include pattern-bandcamp.html size="bc-album" iframecode='<iframe style="border: 0; width: 100%; height: 340px;" src="https://bandcamp.com/EmbeddedPlayer/album=2164587015/size=large/bgcol=ffffff/linkcol=333333/artwork=small/transparent=true/"><a href="https://emberrev.bandcamp.com/album/in-super-8">In Super-8 by Ember Rev</a></iframe>' %}

## Album trilogy

The Cambridge-based band [Ember Rev](/blog/tag/ember-rev/) published their debut album in 2017&nbsp;—&nbsp;a year before I first met them&nbsp;—&nbsp;and *In Super-8* is a reworking of that album. After having mixed [*Premonition and Ruin*](/work/music-production/premonition-and-ruin/) and [*From The Country To The City To The Sea*](/work/music-production/from-the-country-to-the-city-to-the-sea-album-mix/), it was a brilliant opportunity to have my signature mix on their first trilogy.

> This re-appraising and re-working is an attempt to capture the character of the songs as they sounded when performed live. This was not  represented in the earlier arrangements which I felt compromised the  songs themselves; songs that we still play to this day.
> <cite>Dan Ecclestone</cite>

## Building the sessions

Dan and I have a proven process dating back 5 years, so we can work well together whether remotely or in person. We trust each other to the point where we can have strong disagreements and manage to happily get to the best possible compromise.

He works in Logic Pro X, so we're usually free to either use rendered multitracks or share the entire project. Since there were recordings spanning almost a decade, I spent some time with iZotope RX cleaning up bits that would get in the way of the mix.

This introductory process is fairly quick, with the advantage of allowing me some time to properly get into the songs and familiarise with the material. Since it all happens directly in Logic, I can ask Dan to clean up a few things, if he agrees. After a fast back-and-forth, he sends the final polished tracks before the mix has even started.

While this may seem like a waste of time, it's the opposite, as it gives me peace of mind during the following stage.

## The mix

As the first chance to work with my then-recently bought [Ollo headphones](/blog/ollo-audio-headphones/), I enjoyed the remarkable difference in sound quality and comfort.

The mixing sessions started with what I deeemed to be the main song. Once I got to a good rough, Dan approved the direction which prompted me to apply my usual methodology of working on 2 or 3 songs at a time.

## Preparing the album for mastering

Once the project approached the stage where I would be delivering the final stereo mixes to the master engineer, [Ian Shepherd](https://productionadvice.co.uk/about/), an idea popped up: testing the album by checking the songs _as an album_&nbsp;—&nbsp;interspersed with a 2-second pause&nbsp;—&nbsp;similarly to how a master would be initially laid out in a DAW.

All the songs are loaded sequentially into a new project, as rendered stereo files. When issues arise, the usual workflow would be to open the mix source session, apply the change, bounce the stereo master and re-import the wave file in the general album project by replacing the previous one.

To save time, I chose [REAPER subprojects](https://www.soundonsound.com/techniques/reaper-subprojects).

## What is a subproject?

From REAPER's official manual:

> A powerful feature of REAPER is the ability to build a master project that uses any number of subprojects, rather than having to store all your individual tracks, folders and media items within a single project file. This has many potential applications but is likely to be especially useful for projects which require a very large number of tracks or for sound design projects where you might wish to use subprojects to build a single overall audio item.

## A REAPER project containing 6 subprojects

Although it's possible to add a subproject in several ways, I clicked the `Insert` menu and chose `Media file...` (Fig. 1).

![REAPER software showing an open Insert menu saying Media file](/assets/images/reaper-subproject-combo-01-add-project.jpg){: width="1024" height="640" }
*Fig. 1 – Adding a project into another project*

Once the project was selected, REAPER opened it, created a proxy and started rendering the stereo master (Fig. 2).

![REAPER showing the render window](/assets/images/reaper-subproject-combo-02-rendering-project.jpg){: width="1024" height="640" }
*Fig. 2 – A session rendering as a subproject*

After the project was rendered into my album session as a wave file, the edit cursor positioned itself at the end of the audio clip. I then proceeded to add a 2-second gap, similar to what's usually done in mastering (Fig. 3). With the edit cursor now moved by two seconds, I added the next song.

![A window menu in REAPER software, showing how to add a 2-second gap after a wave file](/assets/images/reaper-subproject-combo-03-add-space.jpg){: width="1024" height="640" }
*Fig. 3 – Adding a 2-second gap after a song*

When all six projects were loaded as rendered proxy wavefiles, I could see *In Super-8* in its full glory (Fig. 4).

![REAPER arrange window, showing the six song forming the album](/assets/images/reaper-subproject-combo-04-final-project.jpg){: width="1024" height="640" }
*Fig. 4 – The entire album in the project containing 6 subprojects*

It was now super easy to listen, measure and test each song as part of an album. Inconsistencies were easier to spot, and testing loudness is a piece of cake with [REAPER SWS loudness functionality](https://wiki.cockos.com/wiki/index.php/Measure_and_normalize_loudness_with_SWS) (Fig. 5).

![REAPER showing SWS menu Loudness window, indicating values for the six songs](/assets/images/reaper-subproject-combo-05-test-loudness.jpg){: width="1024" height="640" }
*Fig. 5 – Testing loudness on the entire album*

## What's the advantage of having subprojects into one big project?

Whenever I spotted a mistake or something that needed changing, I simply double-clicked on what appeared to be a normal wavefile. Instead of the default reaction (opening the item's properties), REAPER opened the _original mix session_ for that song&nbsp;—&nbsp;in all its multitrack glory&nbsp;—&nbsp;in a new tab. Now, changes could be applied to the original.

Upon hitting save, REAPER refreshed the rendering of the session _and the proxy_ in my "super project". I could close the song and go back to my album project, double checking the changes within that context.

{: .warning }
To learn more about REAPER subprojects, check out this [video by Kenny Gioia](https://youtu.be/S0k7ph7Nnbo) explaining the feature with his usual down-to-earth clear insights.

## Conclusions

For *In Super-8* I used subprojects to save time, but it's useful for sound design, very long sessions or projects containing a large number of parts and tracks. In fact, months ago I worked on a production where subprojects were used for drums in a session with many vocal tracks and a multitude of percussion items. It saved power resources to the point my complex template ran at 12% of CPU capacity.

## Credits

### Performed by

Dan Ecclestone
: Vocals and instrumentation

Ian Pickering
: Drums

### Production

Mixed by Simone Silvestroni.  
Mastered by [Ian Shepherd](https://productionadvice.co.uk/about/).

***

{: .small }
&copy; 2017 Dan Ecclestone