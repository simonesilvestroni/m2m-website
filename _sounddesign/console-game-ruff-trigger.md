---
title: 'Ruff Trigger console game'
date: '2007-05-12'
last_modified_at: '2021-12-07 17:00:42'
year: "2007"
type: "sound design"
subtype: "game audio"
skillset: 
  - "game audio"
  - "project management"
  - "composition"
  - "foley"
  - "field recording"
  - "mix"
  - "master"
  - "middleware"
  - "logic pro"
  - "sound forge"
  - "studio building"
  - "alienbrain"
description: "I spent 5 years as an audio team leader for the console game 'Ruff Trigger'. I directed the soundtrack as well as created and edited all the sound effects."
excerpt: 'I was the <strong>audio team leader</strong> for the console game &lsquo;<em>Ruff Trigger – The Vanocore Conspiracy</em>&rsquo;. I initially directed the soundtrack as well as created the sound effects. The game was published for Playstation2.'
toc: true
featimage: false
permalink: '/work/sound-design/console-game-ruff-trigger/'
---
## How I became a game audio team leader

### Web developer

In January 2000 a company called **Playstos Entertainment** offered me a job as a web developer, right when I was at the final interview stage with a famous Italian internet provider. A web designer himself, one of Playstos' co-founders was looking for **someone who understood both aspects, creative and technical**. I liked the guy immediately, as well as the rest of what I saw: in a room full of 3D animators, someone worked on a Yamaha Klavinova piano — didn't know why, didn't ask. Even the CEO sit among those people, crafting 3D on a regular Dell computer.

I started at the end of January 2000 and **stayed with Playstos for 5 years**. At the time it comprised twenty people, growing until it doubled in size.

### Ruff Trigger

My work as a web developer hit a roadblock when the co-founder **suddenly left the company a week later**, for reasons that eluded me. A replacement didn't arrive, therefore all the web work (creative and technical) was offloaded on me. I was managing quite well, when I was informed that the company was secretly developing a videogame codenamed _Hot Dogs_, which would become _Ruff Trigger: The Vanocore Conspiracy_.

Since Playstos initially didn't have a plan about audio, as soon as they found out about my skills as a musician and sound designer **my role quietly morphed**. Within a few months I turned a decent-sized storage room into a full-fledged studio, so that the sound for _Ruff Trigger_ would be handled in-house.

### The studio

I used Mac and Windows at the same time: a Dell and a G4 in sync. Each computer had the same Creamware soundcard connected to the 01W mixer through an [AES/EBU](https://www.wikiaudio.org/aes-ebu/) sync box. MIDI MTC did the rest. 

Whenever I wanted to **offload CPU from Logic**, I tended to run Vegas Pro or Cubase VST on the Dell as **a secondary sequencer**. The mixdown happened on a Sony DAT deck, before the final master.

{% include pattern-figure.html image="/assets/images/playstos-studio.jpg" caption="Audio studio, circa 2002" width="800" height="531" %}

#### HARDWARE

- Dell PC for audio editing and in-house audio middleware
- Dell PC as a audio sample server
- Custom made PC as a redundant daily backup
- Mac G4, then G5 'cheesegrater'
- Creamware Pulsar II sound cards
- MOTU Midi Express XT MIDI interface
- Roland JV-2080 synth module
- Korg Trinity Pro synth keyboard
- Korg Triton module
- Novation A-station module
- Fender Jazz bass
- Sony PCM-R300 DAT Player Recorder Deck
- Yamaha Klavinova digital piano
- Yamaha 01W digital mixer
- Yamaha NS-10
- Sony surround speakers
- Sony Playstation2 SDK kit
- Xbox SDK kit

#### SOFTWARE

- Emagic Logic Audio Platinum 5
- Steinberg Cubase VST 4
- BIAS Peak
- SoundForge and Vegas Pro by Sonic Foundry
- In-house MXE<sup>&reg;</sup> level editor & audio middleware
- Xbox XACT audio middleware
- Alienbrain assets manager

{% include pattern-figure.html image="/assets/images/playstos-studio-2.jpg" caption="Audio studio, 2003 (Xbox SDK visible at the top of the rack)" width="1200" height="900" %}

## My work on _Ruff Trigger_

### Adaptive soundtrack

I initially worked with a colleague, a musician and 3D artist. Before he got permanently moved to the 3D department, we managed to record and mix several brilliant pieces who [went unused in the final game](https://music.minutestomidnight.co.uk/track/requiem), mostly because the game levels iterated frequently and the music wasn't right anymore.

Working closely with the audio programmer, I **implemented an adaptive soundtrack** within the in-house game engine MXE&reg;. What we did was deploying stems divided in overlaying chunks. Similarly to what can be achieved today with **audio middleware**, the layers could be triggered by specific parameters based on different situations in the gameplay, thus helping increase or decrease the tension.

#### Examples

<div class="alert alert-background-d-10" role="alert">
  <p class="fs-5"><code class="fw-bold">Warning</code> — The following songs are demos <strong>rendered in their linear versions</strong>. They don&rsquo;t reflect their original behavior in the gameplay, where each song had distinct instrument layers that were activated or deactivated following cues from the game engine. As they&rsquo;re the original demos, <strong>they aren&rsquo;t properly mixed nor mastered</strong>.</p>
</div>

<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-3 mt-4 mb-5">
  <div class="col">
    <div class="card text-dark bg-light">
      {% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695671219%3Fsecret_token%3Ds-NZEFQ&color=%23b0b0b0&auto_play=false&hide_related=true&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}
      <div class="card-body">
        <h5 class="card-title mt-0">Industrial City</h5>
        <p class="card-text fs-6">Divided in two distinct sections, it reflected the completely different situations happening during a day/night cycle.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card text-dark bg-light">
      {% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695671240%3Fsecret_token%3Ds-Z0Awt&color=%23b0b0b0&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}
      <div class="card-body">
        <h5 class="card-title mt-0">Farm</h5>
        <p class="card-text fs-6">One of six atmospheric pieces triggered by remote parts of a specific game level. The wind was created with the Korg Trinity.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card text-dark bg-light">
      {% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695671210%3Fsecret_token%3Ds-szxDn&color=%23b0b0b0&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}
      <div class="card-body">
        <h5 class="card-title mt-0">Racing part 1</h5>
        <p class="card-text fs-6">I had fun with the bass! As this level had a fixed time, the duration reflects how long was needed to complete the mission.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card text-dark bg-light">
      {% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695671156%3Fsecret_token%3Ds-MN1dE&color=%23b0b0b0&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}
      <div class="card-body">
        <h5 class="card-title mt-0">TexMex</h5>
        <p class="card-text fs-6">Originally written by my colleague Giuseppe Bianchi, it was set in a Mexican-like environment that was axed early on.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card text-dark bg-light">
      {% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695671060%3Fsecret_token%3Ds-vGqvZ&color=%23b0b0b0&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}
      <div class="card-body">
        <h5 class="card-title mt-0">Tribal Cave</h5>
        <p class="card-text fs-6">More fun bass parts to play with! Made of many interchangeable music layers, I don't know if the level was included in the release.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card text-dark bg-light">
      {% include pattern-soundcloud.html iframecode='<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/695671009%3Fsecret_token%3Ds-mEJW4&color=%23b0b0b0&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>' %}
      <div class="card-body">
        <h5 class="card-title mt-0">Run For Your Life</h5>
        <p class="card-text fs-6">In a labyrinthine area where the boss, unseen, was approaching the player, the piece served as anticipation of something evil.</p>
      </div>
    </div>
  </div>
</div>

Although my initial focus was creating and implementing the sound effects, many minutes of music were written between 2001 and 2003. When I realized I wasn't able to dedicate enough time to the soundtrack I asked to hire a new professional. When a guy who used to work for Sony in Liverpool arrived, I was made **team leader**: along with project management, I re-centered my efforts.

### Sound effects

Despite having several libraries at my disposal, **I wanted to create the effects** myself, hence a request to equip the studio with a few mics. Around the end of 2001, a demo was scheduled to be shown in London, in order to obtain a **license to develop for the Playstation2**. Most of the sound commentary was made using a combination of **Foley in the studio and field recording** for both realtime and video cues.

#### Example

The following teaser includes processed recordings of:

- myself typing on a mechanical keyboard
- several thunderstorms in Milan
- wooshes using belts and other artifacts
- metal hits
- wheeled chairs on irregular surfaces
- multiple compressed air cans
- colleagues making voices
- rustled newspapers
- cat collar with a ring
- a number of synth presets from the Korg Trinity
- a colleague imitating his own dog

The editing and the final authoring were made with **Sound Forge**, **Vegas Pro** and **Logic Audio Platinum**.

{% include pattern-video.html id="X4eQAhk6dKM" %}

### Xbox

After obtaining a license to develop the game for Playstation2, we worked to get _Ruff Trigger_ to the **Xbox** as well. Numerous **SDKs arrived from Microsoft**, including a transparent one for the audio team. I learned their middleware [XACT](https://en.wikipedia.org/wiki/Cross-platform_Audio_Creation_Tool) along with **audio optimization and version control** using [Alienbrain](https://www.alienbrain.com/).

{% include pattern-figure.html image="/assets/images/xact_microsoft.jpg" caption="Microsoft XACT v2.0" width="850" height="540" %}

The dev team in Playstos had done a great job integrating all the required Xbox libraries and dependencies, so that we could work with XACT using **calls from the game engine** to trigger both sound effects and the adaptive soundtrack.

We managed and implemented audio for two different major console platforms, using different tools, assets and specifics. Until 2003, when the Xbox was dropped.


### Game Developer Conference and G.A.N.G.

In January 2002 the CEO informed me that I'd be one of twelve colleagues who would attend the [Game Developer Conference](https://gdconf.com/) in San Jose (California), 19<sup>th</sup> to 23<sup>rd</sup> of March, though we ended up staying for more than a week. The motto for that edition was _Make Better Games_.

{% include pattern-figure.html image="/assets/images/gdc-2002-entrance.jpg" caption="GDC 2002: Entrance of the Convention Center in San Jose" width="640" height="480" %}

Around **ten thousand people** took part that year. A formative experience, it pushed me out of my comfort zone like anything has ever done before. I met with strangers from all over the world, exchanged views and contacts, took an astounding amount of notes.

Audio conferences started a day later, on the 20<sup>th</sup>, so I wandered around the suburbs alone for hours. I ended up buying the iPod first edition at a massive _San Antonio Shopping Center_. Ironically, I met a sound designer there with whom I chatted for a while.

{% include pattern-figure.html image="/assets/images/gdc-2002-attendants.jpg" caption="GDC 2002: Attendance at a workshop" width="768" height="519" %}

My first day was entirely filled with the 8-hours workshop _Using DirectMusic for Music and Sound FX_, with **Brian Schmidt** and **Scott Selfon** among others. Amazing insights about XACT and how to optimize the audio delivery on an Xbox.

Beyond the [first unveiling of **Steam**](https://www.gamespot.com/articles/gdc-2002-valve-unveils-steam/1100-2857298/) by Valve on the 22<sup>nd</sup>, I took part in the historical event for the game audio industry the day before: **the foundation of the [Game Audio Network Guild](https://www.audiogang.org/)**, with Tommy Tallarico, Brian Schmidt, Thomas Dolby and many others. I still have my bronze member certification. The end of that same day was highlighted by _Using a Live Orchestra in Game Soundtracks_ with **Michael Giacchino** and others.

{% include pattern-figure.html image="/assets/images/gdc-2002-locator-badge.jpg" caption="GDC 2002: Conference locator and my entrance badge" width="758" height="1024" %}

The culmination was the keynote given by [Martin O'Donnell](https://en.wikipedia.org/wiki/Martin_O'Donnell), audio director for Bungie on Saturday the 23<sup>rd</sup>. I experienced **_The Audio Production for Halo_** in a room absolutely packed. Besides the technical aspects of him showing production screenshots and actual tricks, along with praises to Microsoft for letting him work on a Mac, I remember filling half a journal with notes about how **sound can empower a non-linear story**.

### After the GDC

Back in Milan, something changed. I was optimistic and excited about the vast amount of knowledge and inspiration gained at the GDC. However, after a week of silence, I asked for a meeting to exchange feedback and insights. Alas, none of what I learned in California got implemented at Playstos, which left me disappointed.

### Team management

During my stint at Playstos I happened to **manage the work of five people**. The best time was between 2002 and 2003 — two sound engineers and an audio programmer working together in the same studio. I attended plenty of meetings where I voiced our concerns and suggestions, **co-ordinating with the producer** while meeting the agreed schedule.

## Why I left Playstos

### Politics and lack of a major publisher

In 2003 the company internal dynamics changed. Despite being built three years earlier around a concept of friendship, growing difficulties started to strain internal dynamics. The **lack of interest shown by high-level publishers** eroded confidence while the first layoffs soured the relationships between colleagues.

To appeal to smaller publishers, the game _had to change_. New hirings with higher levels of experience in the industry arrived and were given full discretionary powers. A few of us who were there since the beginning didn't take it too lightly and left.

### 'Whatever the cost' and burnout

Some of the new leaders criticized the game, judging it as puerile. What was _Ruff Trigger_ as I knew it changed rapidly. Striving to be constructive, I supported a few decisions whilst debating others, and for that I was asked to _stop creating problems_. At the end of 2003 it looked like the sole goal was to cut corners and **let the game out whatever the cost**.

I asked to step down as team leader and renegotiated a new contract at the beginning of 2004, when I started **working from home**. Now paid per seconds of delivered music, the sound effects were internally handled by my colleague from Liverpool. A special VPN connection allowed me to use the internal assets and go to the studios once a month to check on the progress. Despite the renewed situation and being away from the office politics, I discovered how **burned out** I was.

Over the years I spent many nights at Playstos, working double and triple shifts: the impending feeling of "it was for nothing" was weighing me down. In the meantime, _Ruff Trigger_ kept turning into an unexciting budget game. 

At the end of that year, I left.

## Aftermath

Once Playstos found a publisher (Natsume), the game completed its transition from a **multi-platform ambitious project** to something else. The audio was offloaded to a third party, therefore most of my contributions were relegated in the credits as "prototype sound designer".

{% include pattern-figure.html image="/assets/images/playstos-ruff-trigger.jpg" caption="The official packaging" width="458" height="640" %}

### Reactions

Most of the less favorable feedback is focused on a couple of factors: the excessive similarity with _Ratchet and Clank_ and a general lackluster gameplay. The game was always going to resemble the title as an homage to the genre, however Playstos chose to sacrifice the initial ambition to limit the economic loss of a 7-year massive project.

### Why didn't I join another game company

Even though I kept working with audio, I turned my interest to web design. What started as **time off the game industry** turned into a different kind of career.

In 2017 I wrote an autobiographical concept album where a few songs were made of [unused music](/blog/skinny-kid-song-backstory/) from the Playstos years. Initially conceived as a theatrical piece, it rekindled my passion for audio-visual narration prompting me to **go back to game audio**.

While I updated my skills by studying Wwise, FMOD and their relation with major game engines, I got to work as a [sound designer for Paris-based Amuse Animations](/work/sound-design/car-city-cartoon/).

## Reviews

> When passion goes beyond working duties… here’s Simone. Addiction and reliability are two great details you can't easily find nowadays in a professional and he gets both.
> <cite>— Jean Claude Nouchy, [Houdini FX technical director and trainer](http://www.visualcortexlab.com/showreel/)</cite>

> Great co-worker! Very careful, serious and responsible, never superficial. Good webmaster with wide knowledge of the Apple world, the Adobe software and all that’s connected to audio engineering. Highly recommended.
> <cite>— Daniele Pieroni, [Senior Game Developer Relations Engineer at Intel Corporation](https://www.linkedin.com/in/danielepieroni/)</cite>

> Simone is a very talented web designer and audio composer. He pays a lot of attention to quality and detail, and he’s always willing to improve his wide array of skills. Definitely a pleasure to work with.
> <cite>— Michele Sandroni, [Technical Artist at Bosch Rexroth AG](https://www.linkedin.com/in/michelesandroni/)</cite>

{% include pattern-button.html link="/contact/" center=true text="Hire me" %}