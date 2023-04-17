---
title: 'Drums restoration'
date: '2017-06-20'
last_modified_at: '2022-01-27 12:40:09'
author: 'Simone Silvestroni'
tags:
  - "sound design"
  - "recording"
  - "editing"
  - "sound restoration"
  - "mixing"
  - "reaper"
  - "pro tools"
  - "logic pro"
  - "izotope rx"
  - "case study"
description: 'Painstakingly removing an insidious noise from a multi-track recording. Restoring a stereo room with drum doubling and drum replacing. Extracting single tracks from a stereo mix.'
featimage: true
featimage-name: 'drums-restoration.jpg'
featimage-alt: Arlen Millwall on drums
featimage-width: 720
featimage-height: 720
permalink: /work/sound-design/drums-restoration/
---
## Drums restoration & doubling

In 2017 I was [producing the debut single]({{ site.url }}/work/music-production/callum-gardner-debut-single/) for London-based singer-songwriter Callum Gardner. Most of the tracking was handled externally at SAE in London.

After receiving the audio tracks, I noticed two issues with the drums.

### First issue

A repeating squeaky sound coming from the hi-hat pedal was captured by all the microphones. This was a major problem.

{% include pattern-figure.html image="/assets/images/audio-editing-rx-squeaky-hihat.jpg" caption="iZotope RX spectral view showing the squeaky hi-hat noise" width="1024" height="604" %}

#### Noise: before

In this sample the noise is clearly audible. Spread over the entire song, it was particularly problematic in the quiet sections.

{% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695750329%3Fsecret_token%3Ds-mfX5b&color=%23b4b696&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}

#### Noise: after

After adding a gentle gate to cut the noise from both snare and rack, I spent a few hours in iZotope RX cleaning up the hi-hat and overhead tracks. The squeaky hi-hat pedal is gone.

{% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695750326%3Fsecret_token%3Ds-UFUTG&color=%23b4b696&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}

### Second issue

The drums overhead tracks were recorded with a single mic, therefore mono, with no room recording. While I wasn't particularly concerned with this, I thought it could be improved.

#### Mono drums overhead: before

{% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695750338%3Fsecret_token%3Ds-B3sCU&color=%23b4b696&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}

#### Mono drums overhead: after

My choice was a gentle drum doubling technique. After a full MIDI capture of kick, snare, hi-hat and crash, I fired up my drums virtual instrument of choice, Addictive Drums 2 by XLN.

With a clever use of pan and room verb in the plug-in, I managed to _recreate the missing stereo image_ with a nicer studio vibe.

The final result is the original drums with the MIDI doubling blended in to increase the effect and make the percussion more incisive.

{% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695750350%3Fsecret_token%3Ds-fCToe&color=%23b4b696&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}

## Isolating drums from a mastered track

For the last twenty years, I've been obsessed with the idea of recovering my late cousin's drum playing so that I could have him on my tracks. I did it with my song [_The Logic_](https://minutestomidnight.bandcamp.com/track/the-logic), however that was more of a drum replacement process. In fact, I mostly used short sections and drum fills that were already in isolation in their original form.

When iZotope released _Master Rebalance_ as part of Ozone and RX, I tried the full process of taking the drums out of an existing song.

- In Reaper, I imported a full track from a CD he released with his band in the late 1990s.
- Several passages of Ozone's module later, I removed vocals and bass.
- I cleaned up piano and distorted guitars with RX.
- After importing the bounced audio back in Reaper, I detected the tempo and used _dynamic split_ to catch the transients I needed (kick and snare), assigning a virtual instrument to the resulting MIDI track. In this case I chose Steven Slate's Drums.
- Playing with velocity and adding a little hi-hat, I blended the sampled percussion with the original.
- Created a room bus with a little bit of Valhalla Supermassive verb, fed by MIDI kick and snare to add an ambient vibe.
- I also re-processed the original isolated drums: a gate to remove vague remnants of vocals, an EQ and Waves' MV2 to enhance quieter sounds and glue the whole part.

### Before and After

The first ten seconds of the original song, followed by the same section with the isolated drums plus drum doubling in Reaper.

{% include pattern-video.html id="ofgU1kXiSHE" margin="mt-4 mb-0" %}

## Reviews

> In the band I started, Simone was the most involved with regards to arrangement and dynamics. Using his fretless bass, he completely switched the mood of any given part. Simone and I have been working on my new releases, and it’s been an incredibly worthwhile experience. It’s great to have him with me to lead the production side and also to influence the arrangement. I’m really happy to have a producer that understands completely my process as a songwriter.
> <cite>— Callum Gardner, [Singer-songwriter](https://callumgardnerofficial.com/)</cite>