---
title: 'Producing bass remotely'
date: '2020-09-12'
last_modified_at: '2021-12-07 17:00:42'
tags:
  - 'audio editing'
  - 'bass'
  - 'pro tools'
  - 'bandcamp'
  - 'featured'
  - 'master'
  - 'mix'
  - 'music production'
  - 'music release'
  - 'recording'
  - 'sound project'
  - 'workflow'
summary: "An in-depth analysis of the process I go through to produce an effective bass track, from tracking to delivery. Based on a real-life scenario."
canonical: 'https://unlockyoursound.com/producing-bass-tracks-remotely/'
sitemap: false
featimage: true
featimage-name: 'feat-producing-bass-remotely.webp'
featimage-alt: Photo of a bass player in studio while recording a track
featimage-width: 1000
featimage-height: 1000
---
{% include bandcamp.liquid size="bc-single" iframecode='<iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/track=2478609134/size=large/bgcol=ffffff/linkcol=333333/tracklist=false/artwork=small/transparent=true/"><a href="https://sessions.antiquity-music.com/track/the-far-side-of-the-sun">The Far Side Of The Sun by Antiquity</a></iframe>' %}

The following analysis was written in June 2020, based on my work for [Antiquity](https://antiquity-music.com/) and their single _The Far Side Of The Sun_. They are based in New York, while I had been living in the UK at the time.

## Stage 1: Assessment

Regardless if I have an established working relationship with the client, I start with a proper assessment of the material. I listen to the song and have a chat with them. It’s useful to ask for the kind of _mood_ they’re after; or if they have creative ideas about the bass line.

Ultimately, this preliminary work is all about finding out the best way to deliver what the client needs. When I first listen to the audio, I tend to form an idea in my mind. It’s not a defined bass part yet, but sketches who often end up in the final bass track.

### The Source Material

The more technical aspect of the assessment is obtaining the source material. Sometimes clients send just a rough mix of the track in a single audio file. In this case, I need to have some information:

{: .list-hr }
- The BPM of the song.
- The SMPTE and `fps` settings in their DAW project. I need to import the rough mix in my session and avoid audio drifting because of synchronisation issues.

Depending on the client’s level of expertise, I might need to point out a few best practices. I email them a _how-to_ in PDF format, highlighting the fastest and best way to get their project to me.

### The Session

Since I’ve been working with Gerald for a while, we’ve already established a routine. He sends a Logic Pro session with the following:

{: .list-hr }
- Markers. Although optional, it's a great visual help to quickly scan the song structure.
- MIDI virtual instruments bounced to audio.
- Audio rendered with all his plug-ins processing already applied.

If the client has a test track for the bass, it’s sufficient a rough mix with and without it. However, the possibility of taking the volume of groups of instruments up or down is a great help. Typically, I might want to increase the level of drums and percussions, to help with my recording.

When I receive a session, I can decide whether to keep the original format or move it to Reaper. Sometimes I work in Logic for the sake of speed.

## Stage 2: Recording

I don’t have a standard on how many takes I record. My rule is: _as many takes as I need_. Even if I feel a take is good from start to end, I keep going for a couple more. I might come up with different or more interesting riffs or variations.

Whenever I’m sure about a good take, I write down its number. I might refer to it as the _default_ later in the comping phase. I occasionally might want to take breaks or even stop working on the track altogether until the day after. The advantage of this approach is fresh ears and a more open vision.

I record the bass through a SansAmp BassDriver DI v2, rarely applying a software pre-amp or amp simulators.

<video controls src="{{ site.url }}/assets/videos/producing-bass-tracks-remotely-tracking.mp4"
  width="1024">
  Sorry, your browser doesn't support embedded videos, but you can <a href="{{ site.url }}/assets/videos/producing-bass-tracks-remotely-tracking.mp4">download it</a> and watch it with your favorite video player.
</video>

## Stage 3: Comping

I’m an exception to the rule _the first take is always the best_. I tend to see the early attempts as rehearsals. I rarely do punch-ins. If I make an unrecoverable mistake, unless there’s something I really want to keep, I stop and delete. I always start with a default good take, using:

- [takes](https://youtu.be/9zyld5BicWQ) in Reaper
- [playlists](https://www.avid.com/resource-center/whats-new-in-pro-tools) in Pro Tools
- [comp edit](https://www.macprovideo.com/article/logic-pro/heres-how-to-quickly-comp-audio-takes-in-logic-pro-x) in Logic

In Pro Tools I can select a section and quickly swap between takes in loop mode using a keyboard shortcut. The comp is done on the whole track, moving forward from start to end. I check each section of the song, following the markers. I always remember where I played interesting riffs, so I tend to primarily focus on those. When needed, I record a punch-in to fix minor problems.

The final step is listening to the track in context with the mix. If I’m happy with the result I commit to audio, hiding and deactivating the source in case I want to go back and tweak something.

<video controls src="{{ site.url }}/assets/videos/producing-bass-tracks-remotely-comping.mp4"
  width="1024">
  Sorry, your browser doesn't support embedded videos, but you can <a href="{{ site.url }}/assets/videos/producing-bass-tracks-remotely-comping.mp4">download it</a> and watch it with your favorite video player.
</video>

## Stage 4: Editing

After enabling [elastic audio](https://www.pro-tools-expert.com/home-page/2017/5/25/free-puremix-tutorial-how-to-use-elastic-audio-in-pro-tools) in Pro Tools (monophonic, real-time processing), I go in and adjust the transient sensitivity. I want to get to a point where only the correct hits are detected. It’s the best way to avoid irritating artifacts. This is especially useful with a fretless bass.

![Screenshot of a Pro Tools' elastic audio algorithm options](/assets/images/protools-elasticaudio-monophonic-minutes-to-midnight.jpg){: width="720" height="510" }
*Pro Tools algorithm options for elastic audio*

After switching the track view to `Analysis`, excessive transients that might have slipped through the previous step are removed, then in `Warp` view I check if there are obvious mistakes in the timing. Working in grid mode makes it easy to see which notes are off. I tend to only adjust what's obviously out of place, rather than generically quantize.

In case I decide to go for an automated process, I never go beyond an 82% clean-up. I prefer to _retain the human factor_ with my playing. In the video below, you can see a single automatic audio quantize to a specific small selection played as triplets, and a couple of notes adjusted.

Finally, I switch elastic audio to `X-Form`. As a high-quality process, it is a _rendering-only mode_. The result is always satisfying to my ears. Once again, I commit the audio to a new track, and hide/disable the source.

<video controls src="{{ site.url }}/assets/videos/producing-bass-tracks-remotely-editing.mp4"
  width="1024">
  Sorry, your browser doesn't support embedded videos, but you can <a href="{{ site.url }}/assets/videos/producing-bass-tracks-remotely-editing.mp4">download it</a> and watch it with your favorite video player.
</video>

## Stage 5: Mix

### EQ

{: .list-hr }
- I usually focus on the relationship between kick and bass. After working out the fundamental of the kick I try to scoop out that same frequency from the bass, usually in sidechain.
- Since I use a 4-string instrument, I remove the deepest sub-bass with a high-pass filter.
- Adding _harmonic enhancing_ is usually the most efficient way for the bass guitar to be heard on smaller speakers such as mobile phones, tablets and laptops. I mostly use Waves's _RBass_ for the task.

### Compression

Not a fan of compressing the source channel, except for when there are extreme peaks or dips. In some cases, Pro Tools’ `clip gain` gets the job done. I prefer compression as a parallel process, oftentimes adopting multiple parallel processes through several busses. After applying different flavours of gentle to more drastic compression, I blend all the signals together. My plug-in staples are:

{: .list-hr }
- 1176 (black)
- LA-2A
- A third of my choice depending on the sound and the interpretation I want to convey:
  - H-comp or LA-3A by Waves.
  - Distressor, emulated by McDSP.
  - Decapitator by Soundtoys. As a matter of fact, saturation is a process I pretty much always apply, mildly and in parallel, unless the song requires a properly distorted bass.

Once I'm happy with compression, I add a Pultec to the final bass track.

### Sends

Although I’ve applied both reverb and delay to the bass on a [song contained in my recent album _After 1989_](https://minutestomidnight.bandcamp.com/track/requiem), I usually never do. I prefer to add spacing effects only if the instrument is performing an important melodic function. In the aforementioned song, there's a synth bass audible in the second half. It's my Warwick played with a pick, passed through a stutter effect, a phaser, a panner and a delay.

<video controls src="{{ site.url }}/assets/videos/producing-bass-tracks-remotely-mixing.mp4"
  width="1024">
  Sorry, your browser doesn't support embedded videos, but you can <a href="{{ site.url }}/assets/videos/producing-bass-tracks-remotely-mixing.mp4">download it</a> and watch it with your favorite video player.
</video>

## Stage 6: Delivery

When it comes to delivery, it all depends on what the client had sent to me. If I received a simple stereo audio file, I reciprocate by sending a mono track with my bass. The true peak is between `–3` and `–6 dB` with an RMS of about `–12 dB`. No matter when my part starts, I always export the audio _from the very beginning of the session_.

With Antiquity I bounce the bass from Pro Tools and import in the original Logic song. I give it a final listen: if it sounds good, I copy the session to Dropbox. In the video example below, I’ve found the track to be too _hot_ (but not clipping), so I proceeded to reduce the gain directly in Logic.

Optimising is paramount. To deliver a clean session I export a new copy cleaning up any unused or deactivated tracks. I _never deliver a session with my takes_, comp or edits: only the mixdown.

<video controls src="{{ site.url }}/assets/videos/producing-bass-tracks-remotely-delivery.mp4"
  width="1024">
  Sorry, your browser doesn't support embedded videos, but you can <a href="{{ site.url }}/assets/videos/producing-bass-tracks-remotely-delivery.mp4">download it</a> and watch it with your favorite video player.
</video>

## Stage 7: Feedback from the client

Unless I’m working on a larger project, for which I use my [Trello system]({{ site.url }}/blog/project-management/), I have a practical way for the client to give feedback on my mixes. If they have a Dropbox account I send a direct link: they can listen and add comments that would be attached to the correct position in the song timeline. It’s the same behaviour as in SoundCloud’s comment system.

{% include figure.liquid image='dropbox-comments-minutes-to-midnight.jpg' alt='Screenshot of a Dropbox window where a waveform is presented with a sidebar where people can add comments' width='1024' height='604' caption='Clients can add comments from the sidebar column' %}{: .fullscreen }

## Client review

> I’ve worked with Simone on both my projects and his and the professionalism and quality of his work is world class. I have rarely had to give direction and he takes direction like an interested pro. I’m very partial to his style and tone. I hope to be still playing with him in the years to come. If you want a bass track that stands out and makes people sit up and listen, Simone is your man.
> <cite>Gerald Duchene, [Antiquity](http://antiquity-music.com/)</cite>