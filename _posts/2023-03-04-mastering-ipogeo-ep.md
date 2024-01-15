---
title: 'Master: ‘Ipogeo’ by IsadoraD'
date: '2023-03-04 17:29:59'
last_modified_at: '2023-03-04 17:30:04'
tags: 
  - 'audio editing'
  - 'indie artist'
  - 'master'
  - 'music production'
  - 'reaper'
  - 'software'
  - 'sound project'
description: "I mastered the debut EP for the Italian duo <em>IsadoraD</em>. They blend electronica, pop and indie."
featimage: true
thumbOnly: true
---
{% include pattern-bandcamp.html size="bc-ep" iframecode='<iframe style="border: 0; width: 100%; height: 241px;" src="https://bandcamp.com/EmbeddedPlayer/album=3556110038/size=large/bgcol=ffffff/linkcol=333333/artwork=small/transparent=true/"><a href="https://isadorad.bandcamp.com/album/ipogeo">Ipogeo by IsadoraD</a></iframe>' %}

## Stem mastering

After listening to the mixes, I almost immediately opted for [stem mastering](https://www.izotope.com/en/learn/stem-mastering.html). I felt like the songs could have been improved by slightly altering the balance between certain tracks. Even if it was possible to perform a fairly similar correction on a two-track stereo using spectral editing, I felt like having the stems would have offered way more wiggle.

After agreeing on the type and number of stems, I proceeded with the edits. Having such a granular access to the layers, I could apply gentle strokes of EQ and compression to some tracks leaving the others untouched. Automation also was of great help, especially for enhancing the choruses.

![A Reaper project where I mastered using stems for drums, bass, vocals, guitars and keyboards](/assets/images/ipogeo-stem-mastering.jpeg){: width="1200" height="750" }
*A Reaper project with stems for drums, bass, vocals, guitars and keys*

## Mastering using Reaper subprojects

The way I approached the final mastering stage resembles the same technique adopted while [mixing Ember Rev's upcoming album](/work/music-production/mix-ember-rev-reaper-subprojects/). Subprojects are such a powerful and useful feature I couldn't refrain from trying it with mastering.

Once the editing stage is complete, ideally I don't want to keep tinkering with the audio material. With subprojects there's no bouncing of the two-track to disk to be imported in a new session. Instead, the stem-mastered project becomes a _child_ to be added to a _parent_ project.

The crucial difference is that if I then double-click the child project (rendered in the parent project as a stereo wave file), Reaper opens a new project tab containing the original session, complete with multi-tracks, plug-ins, edits and automation. I can perform fine-tuning without technically leaving my master project. Once I save the new edits, the child is automatically re-rendered and updated in the parent.

So far, I haven't seen anyone else using the same procedure, so this is to be considered my take on stem mastering using subprojects in Reaper.

## Mastering ‘Ipogeo’

I had to go back to the stems a couple times, because of minor loudness adjustments. Normally, I would have adopted a multi-band compressor on certain frequency ranges; since subprojects are available, I simply double-clicked and opened the original stem stession, applied the corrections on drums and bass without touching vocals and the remaining instrumentation.

Once happy with the master, I bounced three versions, each one with a progressively higher loudness. In the following screengrab, the subproject (yellow audio item) had retained the original session markers as item/take markers, which helped with automating the limiter in certain sections.

!["The master project in Reaper containing a subproject, along with 3 rendered test masters](/assets/images/ipogeo-master.jpeg){: width="1200" height="750" }
*The master project in Reaper containing a subproject, along with 3 rendered test masters*

## Checking loudness

With [SWS](https://www.sws-extension.org/) installed, checking on loudness is a breeze. Besides having useful metering plug-ins, I love how quickly I can select multiple audio items, click on the Extensions menu and select <kbd>Loudness</kbd> to [see the complete analysis in a neat table](https://wiki.cockos.com/wiki/index.php/Measure_and_normalize_loudness_with_SWS).

![Final session with the 3 mastered songs on different tracks, to check on loudness and consistency](/assets/images/ipogeo-final-check.jpeg){: width="1200" height="750" }
*Final session with the mastered songs, to check on loudness and consistency*

## Official video

{% include pattern-video.html id="kXk8FZjz4OU" %}

## Credits

### Performed by

**Bruno Valeri**\
vocals, piano, synth

**Emilio Albertoni**\
guitars, bass, synth

### Production
Mixed by Emilio Albertoni / Mastered by Simone Silvestroni.

{: .small }
&copy; 2023 Emilio Albertoni &amp; Bruno Valeri\
℗ 2023 Minutes to Midnight (sound recording copyright)