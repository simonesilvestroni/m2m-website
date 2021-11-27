---
title: 'How to produce bass tracks remotely'
date: '2020-11-04'
last_modified_at: '2021-11-09 19:05:52'
categories:
  - 'Music production'
tags:
  - bass
  - ebook
  - production
  - productivity
  - remote work
  - workflow
  - popular
description: "'Producing Bass Tracks Remotely' has been published by Unlock Your Sound. Get more music done with my free eBook on efficient productivity."
excerpt: 'The following article, &lsquo;Producing Bass Tracks Remotely&rsquo;, features the real-life scenario of a bass part produced for the single &lsquo;The Far Side of the Sun&rsquo; by Antiquity. Originally published on <a href="https://unlockyoursound.com/producing-bass-tracks-remotely/" target="_blank" rel="noopener">Unlock Your Sound</a>.'
canonical: 'https://unlockyoursound.com/producing-bass-tracks-remotely/'
---
<p class="lead">{{ page.excerpt }}</p>

## What this post is about

Working remotely has become an accessible and relatively easy way to collaborate for musicians. In this article, I expose my **process for producing effective bass tracks** for clients based in a different city or country. The post is based on my work for [Antiquity](https://sessions.antiquity-music.com/), and their recent single _The Far Side Of The Sun_. I’ve been collaborating with [Gerald Duchene](http://antiquity-music.com/about-1) on his amazing music for more than a year now: a perfect example.

## Stage 1: Assessment

Regardless if I have an established working relationship with the client, I start with a **proper assessment of the material**. I listen to the song and have a chat with them. It’s useful to ask for the kind of _mood_ they’re after; or if they have creative ideas about the bass line.

Ultimately, this preliminary work is all about finding out the best way to deliver **what the client wants**. When I first listen to the audio, I tend to form an idea in my mind. It’s not a defined bass part yet, but sketches who often end up in the final bass track.

### The Source Material

The more technical aspect of the assessment is obtaining the source material. Sometimes clients send just a rough mix of the track in a single audio file. In this case, I need to have some information:

<ul class="m2m-ul">
  <li>The BPM of the song.</li>
  <li>The <a href="https://www.smpte.org/who-we-are" target="_blank" rel="noopener noreferrer">SMPTE</a> and fps settings in their DAW project. I need to import the rough mix in my session and avoid the audio drifting because of a wrong synchronisation.</li>
</ul>

Depending on the client’s level of expertise, I might need to point out a few best practices. I email them a _how-to_ in PDF format, highlighting the fastest and best way to get their project to me.

### The Session

Since I’ve been working with Gerald for a long time, we’ve developed an established well-oiled routine:

<ul class="m2m-ul">
  <li>He sends a <a href="https://unlockyoursound.com/logic-pro/" target="_blank" rel="noopener">Logic</a> session complete with song markers. This is optional, but nevertheless a great visual help for a quick scan of the song structure.</li>
  <li>All the audio is present, in separate tracks.</li>
  <li>He takes care of rendering virtual instruments or MIDI tracks to audio.</li>
  <li>The same render applies to audio track containing plug-ins, for the sake of an easy back-and-forth exchange.</li>
</ul>

I don’t actually require having all the separate tracks. If the client has a test track for the bass, it’s sufficient a rough mix with and without it. However, the possibility of taking the volume of groups of instruments up or down is a great help. Typically, I might want to increase the level of drums and percussions, to help with my recording.

When I receive a session, I can decide to keep it in their original format or move to a different software. Although my main DAW is Pro Tools, I sometimes choose to stay in Logic for the sake of speed.

## Stage 2: Recording

I don’t have a standard on how many takes I record. My rule is: _as many takes as I deem fit_. Even if I feel a take is good from start to end, **I keep going for a couple more**. I might come up with different or more interesting riffs or variations.

Whenever I’m sure about a good take, I write down its number. I might refer to it as the _default_, later in the comping phase. Whether I record 2 takes or 10, my approach is the same: if I have enough time to work on a bass track, I’ll be recording as many as I can. I occasionally might want to take breaks. Sometimes I could even stop working on the track altogether and come back to it the day after. The advantage of this approach is **fresh ears** and a more open vision.

I record the bass through a [SansAmp **BassDriver** DI v2](/uses/), rarely applying a software pre-amp or amp simulators.

{% include pattern-video.html id="touEk1I8hJE" %}

## Stage 3: [Comping](https://www.soundonsound.com/techniques/crafty-comping){:target="_blank" rel="noopener"}

I don’t listen to all my recordings because I know which ones are the best — usually the last three or four. I’m an exception to the rule _the first take is always the best_. I tend to use **the first takes as rehearsals** in my quest to find the perfect track. I rarely do _punch-ins_. If I make an unrecoverable mistake, unless there’s something I really want to keep, I stop and delete. If an otherwise perfect take has a wrong passage, there’s going to be some other take which would cover for it.

I put the most interesting takes on top, so that I start with a default good one. In Pro Tools I use [playlists](http://www.avidblogs.com/pro-tools-2018-1-playlist-comping/){:target="_blank" rel="noopener"}, in Logic I adopt its [comp edit](https://www.macprovideo.com/article/logic-pro/heres-how-to-quickly-comp-audio-takes-in-logic-pro-x){:target="_blank" rel="noopener"} functionality. They’re both intuitive and easy to use. I prefer Pro Tools because I can select a section and **quickly swap between takes in loop mode** using a keyboard shortcut. It’s personal taste, Logic’s approach is as good as Pro Tools’.

The comp is done on the whole track, moving forward from start to end. I check each section of the song, following the markers. I always remember where I played interesting riffs, so I tend to put a particular attention on those. If a nice riff wasn’t executed properly, I record a punch-in to fill in. I do this as a second to last step in the comping phase. **The final step** is listening to the track in context with the mix. If I’m happy with the result, I batch fade the segments and commit the entire comp to audio. I hide and deactivate the source, in case I want to go back and tweak something.

{% include pattern-video.html id="hbHGVrxn6Mw" %}

## Stage 4: Editing

This is the stage that I invariably performin Pro Tools. I prefer working with Avid’s [elastic audio](https://www.pro-tools-expert.com/home-page/2017/5/25/free-puremix-tutorial-how-to-use-elastic-audio-in-pro-tools){:target="_blank" rel="noopener"} rather than Logic’s [flex time](https://support.apple.com/guide/logicpro/flex-time-and-pitch-overview-lgcp15968647/mac){:target="_blank" rel="noopener"} functionality. After enabling the feature (monophonic, real-time processing), I go in and adjust the **transient sensitivity**. I want to get to a point where only the correct hits are detected. It’s the best way to avoid horrific artifacts that might come up during editing. This is especially useful in case I recorded the bass using a fretless.

{% include pattern-figure.html image="/assets/images/protools-elasticaudio-monophonic-minutes-to-midnight.jpg" caption="Pro Tools algorithm options for elastic audio" width="295" height="209" %}

After switching the track view to `Analysis`, I remove excessive transients that might have slipped through the previous step. Once done, I switch to `Warp` view and check if there are obvious mistakes in the timing. I’m in grid mode, usually in 16th, so it’s pretty easy to see which notes are off. I tend to adjust single notes, when they’re obviously out of place, rather than quantize. In case I decide to go for an automated process, I never go beyond an 82% clean-up. I prefer to **retain the human factor** and my playing. In the video below, you can see a single automatic audio quantize to a specific small selection played as triplets, and a couple of notes adjusted.

I finally switch the elastic audio to X-Form, a _rendering-only mode_. It’s a high-quality process, compared to real-time. The result is always stunning to my ears. Again, when it’s complete, I **commit the audio to a new track**, and hide/disable the source.

{% include pattern-video.html id="QoFwDqM58dc" %}

## Stage 5: Mix

### EQ

I start mixing by focusing my attention to the relationship between the kick drum and my bass. I work out the **fundamental** of the kick and try an EQ cut on my track around the same frequency. It gives space to the kick by getting the bass out of the way. I also high-pass my track. Since I only use a 4-string instrument, I let the deepest sub-bass free for whichever sound might be using it. As a second step, I boost the fundamental of the bass, to which I also add some _harmonic enhancing_. It’s the most efficient way for the bass guitar to be heard on **smaller speakers** such as mobile phones, tablets and laptops. I mostly use [Waves](https://www.waves.com/plugins){:target="_blank" rel="noopener"} plug-ins, except for some interventions from [Soundtoys](https://www.soundtoys.com/){:target="_blank" rel="noopener"}.

### Compression

Not a fan of compressing the source channel, except for when I have really extreme peaks or dips. In some cases, I employ Pro Tools’ `clip gain` directly to the audio. I tend to use compression as a **parallel process**, oftentimes adopting multiple parallel processes through several busses. I send the signal to one to three aux channels, apply different flavours of gentle to more drastic compression, and blend them with the original through a bass **master bus**.

My plug-in staples are the **1176 (black)**, an **LA-2A**, and a third of my choice depending on the sound and the interpretation I want to convey. Sometimes an [RComp](https://www.waves.com/plugins/renaissance-compressor#mixing-beats-vocals-renaissance-plugins-marioso){:target="_blank" rel="noopener"}, an [H-comp](https://www.waves.com/plugins/h-comp-hybrid-compressor){:target="_blank" rel="noopener"} or the **LA-3A**. At times I even add a [Distressor](https://www.mcdsp.com/plugin-index/compressor-bank/){:target="_blank" rel="noopener"} emulation or [Decapitator](https://www.soundtoys.com/product/decapitator/){:target="_blank" rel="noopener"}. In fact, saturation is a process I pretty much always apply, mildly and in parallel, unless the song really requires a distorted bass.

If I don’t want or need to use parallel processing, I apply compression directly: in this case I always _commit to audio at each step_. After I added an EQ, I commit; if I add harmonic enhancement I do the same, and so on. At each step, I deactivate and hide the previous source track, to save on CPU and keep a backup. After my compression is done, sometimes I go on and add a **Pultec** to the final track, on my master bus.

### Send effects

I almost never apply reverb or delay to the bass. I’ve used both on a [song contained in my recent album _After 1989_](https://minutestomidnight.bandcamp.com/track/requiem), which features a fretless solo. I like to add spacing effects only when the bass is performing an **important melodic function**. Sometimes even if it’s a particular secondary effect, or if it’s used together with a hard panning. The “synth bass” audible in the second half of the same song is my Warwick played with a pick. I passed it through a stutter effect, a phaser, a panner and a delay.

{% include pattern-video.html id="yHYuOuujeMk" %}

## Stage 6: Delivery

When it comes to delivery, it all depends on what the client had sent to me. If I received a simple stereo audio file, I reciprocate by sending a **mono track with my bass**. The true peak is between `–3` and `–6 dB` with an RMS of about `–12 dB`. No matter when my part starts, I always export the audio _from the very beginning of the session_. For Antiquity, since I received a Logic session, I **bounce** my final bass from Pro Tools, importing it in the original Logic song. I give it a listen and if it sounds good, I save the session and copy it to Dropbox. In the following video example, I’ve found the track to be too _hot_ (but not clipping), so I proceeded to reduce the gain directly in Logic.

**Optimising is paramount.** To deliver a clean session I export a copy of the session, cleaning up any unused or deactivated tracks. I _never deliver a session with my takes_, comp or edits: only the mixdown.

{% include pattern-video.html id="6mpy1pyqV-A" %}

## Stage 7: Feedback from the client

Unless I’m working on a larger project, for which I use my [Trello system](/work/project-management/), I have a practical way for the client to give feedback on my mixes. When I send a direct link to the bounced audio in my Dropbox, clients can listen and **add comments that would be attached to the correct position** in the song timeline. It’s the same behaviour as in SoundCloud’s comment system.

{% include pattern-figure.html image="/assets/images/dropbox-comments-minutes-to-midnight.jpg" caption="Clients can add comments from the sidebar column" width="1024" height="604" %}

## The final result

{% include pattern-bandcamp.html iframecode='<iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/track=2478609134/size=large/bgcol=ffffff/linkcol=333333/tracklist=false/artwork=small/transparent=true/" seamless><a href="https://sessions.antiquity-music.com/track/the-far-side-of-the-sun">The Far Side Of The Sun by Antiquity</a></iframe>' %}

Buy and download on [Bandcamp](https://sessions.antiquity-music.com/track/the-far-side-of-the-sun){:target="_blank" rel="noopener"}.

## More Bass Tracks By Minutes to Midnight

{% include pattern-spotify.html id="1EC2Hm0xSywc5pITPMhuIA" type="playlist" height="380" %}