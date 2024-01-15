---
title: 'Sound design: Drums restoration'
date: '2017-06-20'
last_modified_at: '2022-01-27 12:40:09'
tags:
  - 'audio editing'
  - 'mix'
  - 'pro tools'
  - 'reaper'
  - 'recording'
  - 'software'
  - 'sound design'
  - 'sound project'
description: 'Painstakingly removing an insidious noise from a multi-track recording, plus various techniques for drum replacing and drum doubling.'
featimage: true
featimage-name: 'drums-restoration.jpg'
featimage-alt: Arlen Millwall on drums
featimage-caption: Arlen Millwall, who played drums with Callum Gardner
featimage-width: 720
featimage-height: 720
---
## Drums restoration & doubling

In 2017 I was [producing the debut single]({{ site.url }}/work/music-production/callum-gardner-debut-single/) for London-based singer-songwriter Callum Gardner. Most of the tracking was handled externally at SAE in London.

After receiving the audio tracks, I noticed two issues with the drums.

### First issue: squeaky pedal

A repeating squeaky sound coming from the hi-hat pedal was captured by all the microphones. This was a major problem.

![iZotope RX spectral view showing the squeaky hi-hat noise](/assets/images/audio-editing-rx-squeaky-hihat.jpg){: width="1024" height="604" }
*iZotope RX spectral view showing the squeaky hi-hat noise*

#### Squeaky pedal, before & after

Spread over the entire song, the noise is clearly audible &mdash; especially problematic in the quiet sections.

<div class="audioplayer">
  <span>Hi-hat with squeaky noise</span>
  <audio controls>
    <source src="{{ site.url }}/assets/sounds/drums-correction-hihat-squeaky.mp3" type="audio/mpeg" />
    <p>Download the <a href="{{ site.url }}/assets/sounds/drums-correction-hihat-squeaky.mp3">MP3 audio file</a> (759 KB).</p>
  </audio>
</div>

After cutting some of the noise with a gentle gate on both snare and rack, I spent an hour or so in iZotope RX cleaning up the hi-hat and overhead tracks. The squeaky hi-hat pedal is gone.

<div class="audioplayer">
  <span>Hi-hat with squeaky noise removed</span>
  <audio controls>
    <source src="{{ site.url }}/assets/sounds/drums-correction-hihat-squeaky-clean.mp3" type="audio/mpeg" />
    <p>Download the <a href="{{ site.url }}/assets/sounds/drums-correction-hihat-squeaky-clean.mp3">MP3 audio file</a> (751 KB).</p>
  </audio>
</div>

### Second issue: no room sound

The drums overhead tracks were recorded with a single mic, therefore mono, with no room recording. I immediately thought it could be improved.

#### Mono drums overhead, before &amp; after

<div class="audioplayer">
  <span>Drums with a mono overhead</span>
  <audio controls>
    <source src="{{ site.url }}/assets/sounds/drums-correction-room-mono.mp3" type="audio/mpeg" />
    <p>Download the <a href="{{ site.url }}/assets/sounds/drums-correction-room-mono.mp3">MP3 audio file</a> (1.8 MB).</p>
  </audio>
</div>

My choice was a gentle drum doubling technique. After a MIDI capture of kick, snare, hi-hat and crash, I fired up my drums virtual instrument of choice, Addictive Drums 2 by XLN. With a clever use of pan and room verb in the plug-in, I managed to recreate the missing stereo image with a nice studio vibe.

The final result is the original drums with the MIDI doubling blended in to increase the effect and make the percussion more incisive.

<div class="audioplayer">
  <span>Drums with a restored stereo overhead</span>
  <audio controls>
    <source src="{{ site.url }}/assets/sounds/drums-correction-room-stereo-restored.mp3" type="audio/mpeg" />
    <p>Download the <a href="{{ site.url }}/assets/sounds/drums-correction-room-stereo-restored.mp3">MP3 audio file</a> (1.8 MB).</p>
  </audio>
</div>

### Third issue: isolating drums from a mastered track

For the last twenty years, I've been obsessed with the idea of recovering my late cousin's drum playing so that I could have him on my tracks. I did it with my song [_The Logic_](https://minutestomidnight.bandcamp.com/track/the-logic), however that was more of a drum replacement process. In fact, I mostly used short sections and drum fills that were already in isolation in their original form.

When iZotope released _Master Rebalance_ as part of Ozone and RX, I tried the full process of taking the drums out of an existing song.

{: .list-hr }
- In Reaper, I imported a full track from a CD he released with his band in the late 1990s.
- Several passages of Ozone's module later, I removed vocals and bass.
- I cleaned up piano and distorted guitars with RX.
- After importing the bounced audio back in Reaper, I detected the tempo and used _dynamic split_ to catch the transients I needed (kick and snare), assigning a virtual instrument to the resulting MIDI track. In this case I chose Steven Slate's Drums.
- Playing with velocity and adding a little hi-hat, I blended the sampled percussion with the original.
- Created a room bus with a little bit of Valhalla Supermassive verb, fed by MIDI kick and snare to add an ambient vibe.
- I also re-processed the original isolated drums: a gate to remove vague remnants of vocals, an EQ and Waves' MV2 to enhance quieter sounds and glue the whole part.

#### Isolated drums, before &amp; After

The first ten seconds of the original song, followed by the same section with the isolated drums plus drum doubling in Reaper.

{% include pattern-video.html id="ofgU1kXiSHE" margin="mt-4 mb-0" %}

## Reviews

{: .big }
> In the band I started, Simone was the most involved with regards to arrangement and dynamics. Using his fretless bass, he completely switched the mood of any given part. Simone and I have been working on my new releases, and it’s been an incredibly worthwhile experience. It’s great to have him with me to lead the production side and also to influence the arrangement. I’m really happy to have a producer that understands completely my process as a songwriter.
> <cite>Callum Gardner, [Singer-songwriter](https://callumgardnerofficial.com/)</cite>