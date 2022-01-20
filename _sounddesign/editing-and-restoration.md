---
layout: casestudy
title: 'Editing and restoration'
date: '2020-09-16'
last_modified_at: '2021-12-29 20:41:10'
year: "2018-2020"
type: "audio editing"
skillset: 
  - "recording"
  - "editing"
  - "sound restoration"
  - "mix"
  - "reaper"
  - "pro tools"
  - "logic pro"
  - "iZotope RX"
  - "Soundtoys"
description: "A selection of work where I enjoyed combining technical prowess and creativity: editing, restoration, drum replacing, noise removal and more."
excerpt: "A selection of work where I enjoyed combining <strong>technical prowess and creativity</strong>: vocal transformation, editing, restoration, drum replacing, noise removal and more."
toc: true
featimage: false
permalink: '/work/sound-design/editing-and-restoration/'
---
## Vocal transformation

After the [demo stage of my album](/work/original-music-productions/after-1989-demos/) _After 1989_, I scrapped a song called _Niemandsland_, featuring a marvellous vocal performance by Rachel Goodman. Since its lyrics were critical for the concept, I repurposed them in the new lead single _Skinny Kid_. 

Despite **the two songs having different tonality and tempo**, I decided to salvage Rachel's parts as backing vocals and counterpoint to Dan Ecclestone's lead.

<div class="alert alert-warning px-4 py-4 my-5">
  <h3 class="text-uppercase text-center mt-0">Before and After</h3>
  <p class="mb-0">Rachel Goodman&rsquo;s performance in <em>Niemandsland</em> (an unpublished demo scrapped in 2017) and the same chorus section edited and adapted for <em>Skinny Kid</em>. <strong>The tempo jumped from 78 to 105</strong>.</p>
  {% include pattern-video.html id="NqvejQhhUao" margin="mt-4 mb-0" %}
</div>

The painstaking process of transforming a vocal performance from one song to another was done using **Logic Pro** and **Soundtoys** — specifically: Flex Pitch, Flex Time and Little Alterboy.

Working on both _the pitch and the formants_, I strived to obtain a new track that sounded coherent with the new lead single without showing notable artifacts.

---

## Drums restoration & doubling

In 2017 I was playing bass and [producing the debut single](/blog/callum-gardner-debut-single/) for London-based singer-songwriter Callum Gardner. All the recordings were handled externally at SAE in London, except for the bass which I recorded at my home studio in Cambridge.

After we received the audio tracks, we noticed **two issues with the drums**. First: a repeating squeaky sound coming from the hi-hat pedal was captured by all the microphones. This was a _major problem_.

{% include pattern-figure.html image="/assets/images/audio-editing-rx-squeaky-hihat.jpg" caption="iZotope RX spectral view showing the squeaky hi-hat noise" width="1024" height="604" %}

<div class="alert alert-warning px-4 py-4 my-5">
  <h3 class="text-uppercase text-center mt-0">Noise: before</h3>
  <p class="mb-4">In this sample the noise is clearly audible. Spread over the entire song, it was particularly problematic in the quiet sections.</p>
  <iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695750329%3Fsecret_token%3Ds-mfX5b&color=%23b4b696&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
</div>

After adding a **gate** to cut the noise from both snare and rack, I spent a few hours in **iZotope RX 6** cleaning up the hi-hat and overhead tracks.

<div class="alert alert-warning px-4 py-4 my-5">
  <h3 class="text-uppercase text-center mt-0">Noise: after</h3>
  <p class="mb-4">Now the squeaky hi-hat pedal is gone.</p>
  <iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695750326%3Fsecret_token%3Ds-UFUTG&color=%23b4b696&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
</div>

Second: we received a single mono track for the overhead mics, with no room recording. While I wasn't particularly concerned with this, I thought it could be improved.

<div class="alert alert-warning px-4 py-4 my-5">
  <h3 class="text-uppercase text-center mt-0">Mono drums overhead: before</h3>
  <iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695750338%3Fsecret_token%3Ds-B3sCU&color=%23b4b696&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
</div>

I chose a gentle **drum doubling technique**: after a full MIDI capture of kick, snare, hi-hat and crash, I fired up my drums virtual instrument of choice: Addictive Drums 2 by XLN. With a clever use of pan and room verb in the plug-in, I managed to _recreate the missing stereo image_ with a nicer studio vibe.

<div class="alert alert-warning px-4 py-4 my-5">
  <h3 class="text-uppercase text-center mt-0">Mono drums overhead: after</h3>
  <p class="mb-4">The final result is the original drums with the MIDI doubling blended in to increase the effect and make the percussion more incisive.</p>
  <iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695750350%3Fsecret_token%3Ds-fCToe&color=%23b4b696&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
</div>

---

## Isolating drums from a mastered track

For the last twenty years, I've been obsessed with the idea of recovering my late cousin's drum playing so that I could have him on my tracks. I did it with my song [_The Logic_](https://music.minutestomidnight.co.uk/track/the-logic), however that was more of a drum replacement process. In fact, I mostly used short sections and drum fills that were already in isolation in their original form. When iZotope released _Master Rebalance_ as part of Ozone and RX, I tried the full process of taking the drums out of songs.

- In **Reaper**, I imported a full track from a CD he released with his band in the late 1990s.
- Several passages of Ozone's module later, I successfully **removed vocals and bass**.
- I cleaned up piano and distorted guitars with **RX**.
- After importing the bounced audio back in Reaper, I detected the tempo and used **dynamic split to catch the transients** I needed (kick and snare), assigning a virtual instrument to the resulting MIDI track. In this case I chose Steven Slate's Drums.
- Playing with velocity and adding a little hi-hat, I blended the sampled percussion with the original.
- Created a **room bus** with a little bit of Valhalla Supermassive verb, fed by MIDI kick and snare to add an ambient vibe.
- I also re-processed the original isolated drums: a gate to remove vague remnants of vocals, an EQ and Waves' MV2 to enhance quieter sounds and glue the whole part.

<div class="alert alert-warning px-4 py-4 my-5">
  <h3 class="text-uppercase text-center mt-0">Before and After</h3>
  <p class="mb-0">The first ten seconds of the original song, followed by the same section with the isolated drums plus drum doubling in Reaper.</p>
  {% include pattern-video.html id="ofgU1kXiSHE" margin="mt-4 mb-0" %}
</div>

---

## Robert F. Kennedy eulogy clean-up

I love both **historical speeches and restoring audio**. A famous eulogy given by Robert Francis Kennedy in 1968 after Martin Luther King's assassination was [used in this song](https://minutestomidnight.bandcamp.com/track/requiem). Again, iZotope RX was the only tool I used.

<div class="alert alert-warning px-4 py-4 my-5">
  <h3 class="text-uppercase text-center mt-0">Historical speech: before</h3>
  <iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695948953%3Fsecret_token%3Ds-MSqq5&color=%23b4b696&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
</div>

<div class="alert alert-warning px-4 py-4 my-5">
  <h3 class="text-uppercase text-center mt-0">Historical speech: after</h3>
  <iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695948973%3Fsecret_token%3Ds-zaojZ&color=%23b4b696&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
</div>

{% include pattern-button-hire.html %}

## Reviews

> Simone is a gifted musician, producer and all round creative, with every project we have worked on being greatly improved by his talents. Impressive technical proficiency with various DAW’s (ProTools, Wavelab, RX) as well as the creative knowledge to craft with them what ever is required for the project. When working with Simone, his precise and detailed manor make him an excellent addition to any project or team.
> <cite>— Chris Pavey, [Chris Pavey Mastering](https://chrispaveymastering.com){:target="_blank" rel="noopener"}</cite>

> In the band I started, Simone was the most involved with regards to arrangement and dynamics. Using his fretless bass, he completely switched the mood of any given part. Simone and I have been working on my new releases, and it’s been an incredibly worthwhile experience. It’s great to have him with me to lead the production side and also to influence the arrangement. I’m really happy to have a producer that understands completely my process as a songwriter.
> <cite>— Callum Gardner, [Singer-songwriter](https://callumgardnerofficial.com/){:target="_blank" rel="noopener"}</cite>