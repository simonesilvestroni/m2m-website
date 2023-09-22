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
  - 'work'
description: "As the audio team leader, I created and implemented sound effects and an adaptive soundtrack, bootstrapping the audio for the PlayStation2 video game ‘Ruff Trigger’."
featimage: true
featimage-name: 'ruff-trigger-playstation2-video-game.jpg'
featimage-alt: Ruff Trigger game cover
featimage-width: 720
featimage-height: 720
permalink: /work/sound-design/ruff-trigger-playstation2-game/
---
Hired by Playstos Entertainment in January 2000, I stayed for five years, helping to shape their debut title, _Ruff Trigger: The Vanocore Conspiracy_. The company didn't have a defined plan for the game audio, so within a few months **I turned a decent-sized room into a full-fledged studio**, capable of handling the workflow of an audio team.

## Adaptive soundtrack

Working closely with the audio programmers, I wrote and implemented an [adaptive soundtrack](https://en.wikipedia.org/wiki/Adaptive_music) within the **in-house game engine Wazábe&reg;**. I deployed stems divided in overlaying chunks: similarly to what can be achieved today with modern audio middleware such as Wwise and FMOD, the layers could be triggered by specific game parameters based on different runtime situations, thus helping increase or decrease the tension.

<div class="warning">
  <h3>Examples</h3>
  <p>The following songs are demos <em>rendered in their linear versions</em>, thus they don't reflect their original behaviour in the gameplay. They are not mastered.</p>
  <p>{% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695671219%3Fsecret_token%3Ds-NZEFQ&color=%23b0b0b0&auto_play=false&hide_related=true&show_comments=false&show_user=true&show_reposts=false&show_teaser=false"></iframe>' %}</p>
  <p>{% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695671210%3Fsecret_token%3Ds-szxDn&color=%23b0b0b0&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}</p>
  <p>{% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695671156%3Fsecret_token%3Ds-MN1dE&color=%23b0b0b0&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}</p>
  <p>{% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695671060%3Fsecret_token%3Ds-vGqvZ&color=%23b0b0b0&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}</p>
</div>

## Sound effects

My process for sound effects was to create them from scratch, layering my recordings with a few libraries at my disposal. The example below is a section of a full motion teaser integrated in a demo shown to Sony in London, in order to obtain the license to develop for the Playstation2. The sound commentary was made using a combination of **Foley, field recording, and synthesis**.

{% include pattern-video.html id="X4eQAhk6dKM" %}

The video includes **processed recordings** of myself typing on a mechanical keyboard, thunderstorms in Milan, wooshes using belts and other artifacts, various metal hits from around the office, a wheeled chair on irregular surfaces, multiple compressed air cans, colleagues making noise and voices, rustled newspapers, a cat collar with a little bell, a few presets from a Korg Trinity synthesizer, all edited with Sound Forge, and assembled in Logic Platinum.

## The studio

An Apple G4 and two Dell machines **ran in digital sync**: they were all equipped with the same model of Creamware Pulsar II soundcard, connected to a Yamaha 01W digital mixer through an [AES/EBU](https://www.wikiaudio.org/aes-ebu/) sync box. Each computer had a specific digital audio workstation, which were often connected together through MIDI Time Code: 

- **Emagic Logic Platinum**, main <abbr title="Digital Audio Workstation">DAW</abbr>, on Mac OS X.
- **Steinberg Cubase VST**, secondary, hosting the sampler.
- **Sonic Foundry Acid Pro**, running loops.

Mixes went through the Yamaha digital mixer, to be bounced on a Sony <abbr title="Digital Audio Tape">DAT</abbr>, before the final master was sampled back into the computer. One of the Dell machines also hosted the software developer kits: a level editor, the audio middleware, and later **Microsoft XACT for Xbox**. The photo below shows this setup, at the beginning of 2002.

![In Playstos' audio studio, that I built from scratch, circa 2002](/assets/images/playstos-studio.jpg){: width="800" height="531" }

## The equipment

<div class="warning">
  <h3>Outboard</h3>
  <ul>
    <li>Yamaha 01W digital mixer</li>
    <li>MOTU Midi Express XT MIDI interface</li>
    <li>Sony PCM-R300 DAT Player Recorder Deck</li>
    <li>Novation A-station sound module</li>
    <li>Roland JV-2080 sound module</li>
    <li>Korg Triton sound module</li>
    <li>Yamaha NS-10 speakers</li>
    <li>Sony surround speakers</li>
  </ul>
  <h3>Instrumentation</h3>
  <ul>
    <li>Yamaha Clavinova digital piano</li>
    <li>Korg Trinity Pro</li>
    <li>Fender Jazz bass</li>
  </ul>
  <h3>VST sound modules</h3>
  <ul>
    <li>Gigastudio sampler</li>
    <li>Propellerheads Reason</li>
    <li>Propellerheads Rebirth</li>
    <li>AKAI sample libraries</li>
  </ul>
  <h3>Digital Audio Workstations</h3>
  <ul>
    <li>Emagic Logic Platinum 5</li>
    <li>Steinberg Cubase VST 4</li>
    <li>Sonic Foundry Acid Pro</li>
  </ul>
  <h3>Audio and video editors</h3>
  <ul>
    <li><a href="https://www.soundonsound.com/reviews/bias-peak-pro-6-xt">BIAS Peak</a></li>
    <li>Sonic Foundry SoundForge</li>
    <li>Sonic Foundry Vegas Pro</li>
  </ul>
  <h3>Game audio</h3>
  <ul>
    <li>In-house <a href="https://www.gamesindustry.biz/natsume-and-playstosrsquos-conspiracy">Wazábe&reg; game engine & audio middleware</a></li>
    <li>Sony Playstation2 SDK</li>
    <li>Xbox XACT audio middleware</li>
    <li><a href="http://www.alienbrain.com/">Alienbrain</a> assets manager</li>
  </ul>
  <h3>Microphones</h3>
  <ul>
    <li>SM57</li>
    <li>SM58</li>
  </ul>
</div>

![Photo of the studio, where an Xbox SDK is visible at the top of a rack](/assets/images/playstos-studio-2.jpg){: width="1200" height="900" }
*In-house audio studio, circa 2003 (Xbox transparent SDK visible at the top of the rack)*

## Xbox implementation

After obtaining a license to develop for PlayStation2, we worked to get _Ruff Trigger_ to the Xbox as well. When numerous SDKs arrived from Microsoft, I learned their [XACT](https://en.wikipedia.org/wiki/Cross-platform_Audio_Creation_Tool) middleware, along with all the **specific performance optimization**. Once our developers integrated the required Xbox libraries and dependencies into the game engine, I could work with XACT using **game calls and real-time parameters** to trigger both sound effects and the adaptive soundtrack. For two years, until the Xbox version was dropped, I'd been implementing audio for two different major game consoles, using specific tools within different platform constraints.

![A screenshot of Microsoft XACT v2.0, running on Windows XP](/assets/images/xact_microsoft.jpg){: width="850" height="540" }
*Microsoft XACT v2.0 on Windows XP*

## Leading the team

Following a company reorganisation, my project management duties increased. I needed to recalibrate my efforts, including the addition of a new sound designer who previously worked for Sony in Liverpool. That was arguably my best time with the company: two sound designers and an audio programmer working well together in the studio. We were a tight-knit small team, with **an infallible delivery record**. I designed audio and attended daily meetings where I offered my suggestions and voiced our concerns, co-ordinating with the producers. Overall, **the audio team consisted of six people**: two sound designers, two composers, and two audio programmers.

## Game Developer Conference 2002: <abbr title="Game Audio Network Guild">GANG</abbr>, Steam, and a nice learning curve

![GDC 2002: Entrance of the Convention Center in San Jose](/assets/images/gdc-2002-entrance.jpg){: width="720" height="540" }
*GDC 2002: Entrance of the Convention Center in San Jose*

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

To recover from the burnout, I'd decided to turn most of my interest to web design and development. What started as time off the game industry turned into [a different kind of career](https://simonesilvestroni.com). I kept working with audio production, until I founded Minutes to Midnight after moving to the UK. Besides working as a mixing engineer, I wrote an autobiographical concept album where a few songs were made of [unused music]({{ site.url }}/blog/skinny-kid-song-backstory/) from the Playstos years. Initially conceived as a theatrical piece, and released at the end of 2019, it rekindled my passion for audio-visual narration, prompting me to go back to game audio.

While I'd been updating my skills by studying Wwise, FMOD and their integration with modern game engines, I got to work as a [sound designer for Paris-based Amuse Animations]({{ site.url }}/work/sound-design/car-city-cartoon/).

## Selected endorsements from Playstos

> When passion goes beyond working duties… here’s Simone. Addiction and reliability are two great details you can't easily find nowadays in a professional and he gets both.
> <cite>**Jean Claude Nouchy**, [Houdini FX technical director and trainer](http://www.visualcortexlab.com/showreel/)</cite>

> Great co-worker! Very careful, serious and responsible, never superficial. Good webmaster with wide knowledge of the Apple world, the Adobe software and all that’s connected to audio engineering. Highly recommended.
> <cite>**Daniele Pieroni**, [Senior Game Developer Relations Engineer at Intel Corporation](https://www.linkedin.com/in/danielepieroni/)</cite>

> Simone is a very talented web designer and audio composer. He pays a lot of attention to quality and detail, and he’s always willing to improve his wide array of skills. Definitely a pleasure to work with.
> <cite>**Michele Sandroni**, [Technical Artist at Bosch Rexroth AG](https://www.linkedin.com/in/michelesandroni/)</cite>