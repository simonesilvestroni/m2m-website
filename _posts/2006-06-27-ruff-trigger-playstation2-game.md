---
title: 'Sound design for ‘Ruff Trigger’ PlayStation2 video game'
date: '2006-06-27'
last_modified_at: '2021-12-07 17:00:42'
tags:
  - 'composition'
  - 'field recording'
  - 'foley'
  - 'game audio'
  - 'italy'
  - 'master'
  - 'mix'
  - 'software'
  - 'sound design'
  - 'video games'
  - 'sound project'
description: "As the audio team leader, I created and implemented sound effects and an adaptive soundtrack, bootstrapping the audio for the PlayStation2 video game ‘Ruff Trigger’."
featimage: true
featimage-name: 'ruff-trigger-playstation2-video-game.jpg'
featimage-alt: Ruff Trigger game cover
featimage-width: 720
featimage-height: 720
---
> Great co-worker! Very careful, serious and responsible, never superficial, with a wide knowledge of the Apple world, and all that’s connected to audio engineering. Highly recommended.
> <cite>Daniele Pieroni, [Senior platform programmer at Epic Games](https://www.linkedin.com/in/danielepieroni/)</cite>

[Hired by Playstos Entertainment]({{ site.url }}/blog/joining-playstos/) in January 2000, I helped shaping their debut title — _Ruff Trigger: The Vanocore Conspiracy_. As my first duty was to define a plan for the game audio, I started by **turning a perfect-sized room into a [full-fledged studio](#the-studio)**, capable of handling the workflow of a small dedicated audio team.

## Adaptive soundtrack

Working closely with the audio programmers, I produced and implemented an [adaptive soundtrack](https://en.wikipedia.org/wiki/Adaptive_music) within the **in-house game engine Wazábe&reg;**. I deployed stems divided in overlaying chunks: similarly to what can be achieved today with modern audio middleware such as Wwise and FMOD, the layers could be triggered by specific game parameters based on different runtime situations, thus helping increase or decrease the tension.

### Examples

The following songs are demos rendered in their linear versions, thus they don't reflect their original behaviour in the gameplay. They are not mastered.

<div class="audioplayer">
  <span>Industrial City</span>
  <audio controls>
    <source src="{{ site.url }}/assets/sounds/ruff-trigger_industrialcity.mp3" type="audio/mpeg" />
    <p>Download the <a href="{{ site.url }}/assets/sounds/ruff-trigger_industrialcity.mp3">MP3 audio file</a> (6.1 MB).</p>
  </audio>
</div>
<div class="audioplayer">
  <span>Racing part 1</span>
  <audio controls>
    <source src="{{ site.url }}/assets/sounds/ruff-trigger_racing.mp3" type="audio/mpeg" />
    <p>Download the <a href="{{ site.url }}/assets/sounds/ruff-trigger_racing.mp3">MP3 audio file</a> (3 MB).</p>
  </audio>
</div>
<div class="audioplayer">
  <span>Tex Mex</span>
  <audio controls>
    <source src="{{ site.url }}/assets/sounds/ruff-trigger_texmex.mp3" type="audio/mpeg" />
    <p>Download the <a href="{{ site.url }}/assets/sounds/ruff-trigger_texmex.mp3">MP3 audio file</a> (5.7 MB).</p>
  </audio>
</div>
<div class="audioplayer">
  <span>Tribal cave</span>
  <audio controls>
    <source src="{{ site.url }}/assets/sounds/ruff-trigger_tribalcave.mp3" type="audio/mpeg" />
    <p>Download the <a href="{{ site.url }}/assets/sounds/ruff-trigger_tribalcave.mp3">MP3 audio file</a> (5.4 MB).</p>
  </audio>
</div>

## Sound effects

My process for sound effects was to create them from scratch, layering my recordings with a few libraries at my disposal. The example below is a section of a full motion teaser integrated in a demo shown to Sony in London, in order to obtain the license to develop for the Playstation2. The sound commentary was made using a combination of **Foley, field recording, and synthesis**.

<video controls src="{{ site.url }}/assets/videos/case-study-ruff-trigger-prototype-teaser-extended.mp4"
  poster="{{ site.url }}/assets/videos/case-study-ruff-trigger-prototype-teaser-extended.jpg"
  width="1024">
  Sorry, your browser doesn't support embedded videos, but you can <a href="{{ site.url }}/assets/videos/case-study-ruff-trigger-prototype-teaser-extended.mp4">download it</a> and watch it with your favorite video player.
</video>

{: .small }
If you prefer, [watch the video on YouTube](https://youtu.be/X4eQAhk6dKM){: target="_blank"}<br><br>

The video includes **processed recordings** of myself typing on a mechanical keyboard, thunderstorms in Milan, wooshes using belts and other artifacts, various metal hits from around the office, a wheeled chair on irregular surfaces, multiple compressed air cans, colleagues making noise and voices, rustled newspapers, a cat collar with a little bell, a few presets from a Korg Trinity synthesizer, all edited with Sound Forge, and assembled in Logic Platinum.

## Xbox implementation

After obtaining a license to develop for PlayStation2, we worked to get _Ruff Trigger_ to the Xbox as well. When numerous SDKs arrived from Microsoft, I learned their [XACT](https://en.wikipedia.org/wiki/Cross-platform_Audio_Creation_Tool) middleware, along with all the **specific performance optimization**. Once our developers integrated the required Xbox libraries and dependencies into the game engine, I could work with XACT using **game calls and real-time parameters** to trigger both sound effects and the adaptive soundtrack. For two years, until the Xbox version was dropped, I'd been implementing audio for two different major game consoles, using specific tools within different platform constraints.

![A screenshot of Microsoft XACT v2.0, running on Windows XP](/assets/images/xact_microsoft.jpg){: width="850" height="540" }
*Microsoft XACT v2.0 on Windows XP*

## Leading the team

Following a company reorganisation, my project management duties increased. I needed to recalibrate my efforts, including the addition of a new sound designer who previously worked for Sony in Liverpool. That was arguably my best time with the company: two sound designers and an audio programmer working well together in the studio. We were a tight-knit small team, with **an infallible delivery record**. I designed audio and attended daily meetings where I offered my suggestions and voiced our concerns, co-ordinating with the producers. Overall, **the audio team consisted of six people**: two sound designers, two composers, and two audio programmers.

> Simone is a very talented audio composer. He pays a lot of attention to quality and detail, and he’s always willing to improve his wide array of skills. Definitely a pleasure to work with.
> <cite>Michele Sandroni, [Technical Artist at Bosch Rexroth AG](https://www.linkedin.com/in/michelesandroni/)</cite>

## Game Developer Conference 2002: <abbr title="Game Audio Network Guild">GANG</abbr>, Steam, and a nice learning curve

Between 19 and 23 March 2002 twelve colleagues and I attended the [Game Developer Conference](https://gdconf.com/) in San Jose (California). The motto for that edition, where ten thousand people participated, was _Make Better Games_. A **fantastic formative experience**, it pushed me out of my comfort zone like anything has ever done before. I met with strangers from all over the world, discussed our respective viewpoints, and exchanged contacts. I took an astounding amount of notes! My first day was filled with the 8-hours workshop _Using DirectMusic for Music and Sound FX_, with [Brian Schmidt](https://www.brianschmidtstudios.com/) and Scott Selfon (then at Microsoft) giving amazing insights into how to optimize the audio delivery on an Xbox using XACT.

![GDC 2002: Attendance at a workshop](/assets/images/gdc-2002-attendants.jpg){: width="768" height="519" }
*GDC 2002: attendance at a workshop*

Besides the [unveiling of Steam](https://www.gamespot.com/articles/gdc-2002-valve-unveils-steam/1100-2857298/) by Valve, I took part in the historical event for the game audio industry: the foundation of the [Game Audio Network Guild](https://www.audiogang.org/) by Tommy Tallarico, Brian Schmidt, Thomas Dolby among others, a non-profit organisation aiming at **working to promote excellence in interactive audio**. I joined as a bronze member.

![Bronze member certificate from GANG, signed by Tommy Tallarico](/assets/images/gang-certificate.jpg){: width="960" height="720" }
*My GANG member certificate*

On the last day, a keynote titled _The Audio Production for Halo_, by the then Bungie audio director [Martin O'Donnell](https://en.wikipedia.org/wiki/Martin_O'Donnell), was delivered in a room packed with eager sound designers. It was what I consider the highlight of the conference: beyond the technical aspects of production insights and audio demos, I remember filling half a journal with notes about **how sound can empower a non-linear story**.

![GDC 2002: Conference locator and my entrance badge](/assets/images/gdc-2002-locator-badge.jpg){: width="758" height="1024" }
*GDC 2002: conference locator and my entrance badge*

## After the GDC

Back home, I was optimistic and excited about the vast amount of knowledge and inspiration gained at the conference. After a week of unexpected lack of communication, I'd decided to implement what I learned in California by **making it an integral part of the audio workflow**. However, the absence of a shared feedback across teams was disappointing.

## Burnout

Something changed in the company. Founded by a group of friends, and up to a certain point managed with the same spirit, the growing difficulties due to a lack of interest by high-level publishers eroded confidence, while the first layoffs soured relationships among colleagues. To appeal to smaller publishers, the game _had to change_, so a new wave of hirings brought people with more industry experience. The full discretionary powers they received were promptly enforced without getting to know the internal dynamics first. Several people who were with Playstos since the beginning resigned.

Some of the new leaders criticized the game, calling it puerile. What was _Ruff Trigger_ as I knew it changed rapidly. **Striving to be constructive**, I supported some decisions whilst debating others, and for that I was told to stop creating problems. To me, it looked like the goal was to cut corners and publish the game whatever the cost.

I asked to step down as team leader, and renegotiated a new contract as a remote worker. Regularly going to the studios to check on the progress, a special <abbr title="Virtual Private Network">VPN</abbr> connection allowed me to access the internal assets **while performing tests and backups**. Despite the renewed situation, I discovered how exhausted I was. I spent many nights at Playstos over the years, working double and triple shifts: the impending feeling of _it was all for nothing_ was weighing me down with brute force. In the meantime, I was witnessing _Ruff Trigger_ morphing from a multi-platform ambitious project into a budget game.

In 2005, I left.

## Aftermath

Once Playstos found a publisher (Natsume), the game was [released on 27 June 2006](https://www.mobygames.com/game/34741/ruff-trigger-the-vanocore-conspiracy/). Most of the less favorable feedback is focused on a couple of factors: a general lackluster gameplay, and the excessive similarity with _Ratchet and Clank_ — which was originally conceived as an homage to the genre.

![Ruff Trigger's official packaging](/assets/images/playstos-ruff-trigger.jpg){: width="720" height="1006" }
*Ruff Trigger's official packaging*

## Why I didn't join another game company

To recover from the burnout, I'd decided to turn most of my interest to web design and development. What started as time off the game industry turned into [a different kind of career]({{ site.url }}/about/). I kept working with audio production, until I founded Minutes to Midnight after moving to the UK. Besides working as a mixing engineer, I wrote an autobiographical concept album where a few songs were made of [unused music]({{ site.url }}/blog/skinny-kid-song-backstory/) from the Playstos years. Initially conceived as a theatrical piece, and released at the end of 2019, it rekindled my passion for audio-visual narration, prompting me to go back to game audio.

While I'd been updating my skills by studying Wwise, FMOD and their integration with modern game engines, I got to work as a [sound designer for Paris-based Amuse Animations]({{ site.url }}/blog/car-city-cartoon/).

## Bonus content: the studio

![Photo of the studio, where an Xbox SDK is visible at the top of a rack]({{ site.url }}/assets/images/playstos-studio-2.jpg){: width="1200" height="900" }
_Audio studio, circa 2003, featuring a transparent Xbox SDK at the top of the rack_

An Apple G4 and two Dell machines **ran in digital sync**: they were all equipped with the same model of Creamware Pulsar II soundcard, connected to a Yamaha 01W digital mixer through an [AES/EBU](https://www.wikiaudio.org/aes-ebu/) sync box. Each computer had a specific digital audio workstation, which were often connected together through MIDI Time Code:

- **Emagic Logic Platinum**, main <abbr title="Digital Audio Workstation">DAW</abbr>, on Mac OS X.
- **Steinberg Cubase VST**, secondary, hosting the sampler.
- **Sonic Foundry Acid Pro**, running loops.

Mixes went through the Yamaha digital mixer, to be bounced on a Sony <abbr title="Digital Audio Tape">DAT</abbr>, before the final master was sampled back into the computer. One of the Dell machines also hosted the software developer kits: a level editor, the audio middleware, and later **Microsoft XACT for Xbox**. The photo below shows this setup, at the beginning of 2002.

![In the audio studio, circa 2002]({{ site.url }}/assets/images/playstos-studio.jpg){: width="800" height="531" }

### Outboard

- Yamaha 01W digital mixer
- MOTU Midi Express XT MIDI interface
- Sony PCM-R300 DAT Player Recorder Deck
- Novation A-station sound module
- Roland JV-2080 sound module
- Korg Triton sound module
- Yamaha NS-10 speakers
- Sony surround speakers

### Instrumentation

- Yamaha Clavinova digital piano
- Korg Trinity Pro
- Fender Jazz bass

### VST sound modules

- Gigastudio sampler
- Propellerheads Reason
- Propellerheads Rebirth
- AKAI sample libraries

### Digital Audio Workstations

- Emagic Logic Platinum 5
- Steinberg Cubase VST 4
- Sonic Foundry Acid Pro
  
### Audio and video editors

- [BIAS Peak](https://www.soundonsound.com/reviews/bias-peak-pro-6-xt)
- Sonic Foundry SoundForge
- Sonic Foundry Vegas Pro

### Game audio

- In-house [Wazábe&reg; game engine & audio middleware](https://www.gamesindustry.biz/natsume-and-playstosrsquos-conspiracy)
- Sony Playstation2 SDK
- Xbox XACT audio middleware
- [Alienbrain](http://www.alienbrain.com/) assets manager

### Microphones

- SM57
- SM58