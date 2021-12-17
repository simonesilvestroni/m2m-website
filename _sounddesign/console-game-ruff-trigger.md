---
layout: casestudy
title: 'Ruff Trigger console game'
date: '2007-05-12'
last_modified_at: '2021-12-07 17:00:42'
year: "2007"
type: "game audio"
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
description: "In the 2000s, I was the audio team leader for the console game 'Ruff Trigger – The Vanocore Conspiracy'. I directed the soundtrack as well as created and edited all the sound effects.."
excerpt: "In the 2000s, I was the <strong>audio team leader</strong> for the console game <em>Ruff Trigger – The Vanocore Conspiracy</em>. I initially directed the soundtrack as well as created the sound effects. A few years after I left, the game was published for Playstation2."
toc: true
featimage: false
permalink: '/work/sound-design/console-game-ruff-trigger/'
---
## How I became a game audio team leader

### Web developer

In January 2000 a company called **Playstos Entertainment** offered me a job as a web developer, right when I was at the final interview stage with a famous Italian internet provider. A web designer himself, one of Playstos' co-founders was looking for **someone who understood both aspects, creative and technical**. I liked the guy immediately, as well as the rest of what I saw: in a room full of 3D animators, someone worked on a Yamaha Klavinova piano — didn't know why, didn't ask. Even the actual CEO sit among those people, crafting 3D on a regular Dell computer.

I started at the end of January 2000 and **stayed with Playstos for 5 years**. At the time it comprised twenty people, growing until it doubled in size.

### Ruff Trigger

My work as a web developer got weird straight away, as the co-founder **suddenly left the company a week later** for reasons that eluded me for years. A replacement didn't arrive, therefore all the web work (creative and technical) was offloaded on me. I was managing quite well, when I was informed that the company was secretly developing a videogame codenamed _Hot Dogs_, which would become _Ruff Trigger: The Vanocore Conspiracy_.

Since Playstos initially didn't have a plan about audio, as soon as they found out about my skills as a musician and sound designer **my role quietly morphed**. Within a few months, using my previous experience, I turned a decent-sized storage room into a full-fledged studio, so that the sound for _Ruff Trigger_ would be handled in-house.

### The studio

I used Mac and Windows at the same time. At the time I used one Dell PC and the Mac cheesegrater in sync. Each computer had the same Creamware soundcard, both connected to the 01W mixer through an [AES/EBU](https://www.wikiaudio.org/aes-ebu/) sync box. MIDI MTC did the rest. 

Whenever I wanted to **offload CPU from Logic**, I tended to run Acid Pro or Cubase VST on the Dell as **a secondary sequencer**. Never had an issue. The mixdown happened on the Sony DAT deck, before the final master.

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

I initially worked with a colleague, a musician and 3D artist. Before he got permanently moved to the 3D department, we managed to record and mix several brilliant pieces who [went unused in the final game](https://music.minutestomidnight.co.uk/track/requiem), mostly because the game levels kept changing and the music wasn't right anymore.

Working closely with the audio programmer, I **implemented an adaptive soundtrack** within the in-house game engine MXE&reg;. What we did was deploying stems divided in overlaying chunks. Similarly to what can be achieved today with **audio middleware**, the layers could be triggered by specific parameters based on different situations in the gameplay, thus helping increase or decrease the tension.

Although the main focus was initially the creation and implementation of the sound effects, many minutes of music were written between 2001 and 2003. When I realized I wasn't able to dedicate enough time to the soundtrack I asked to hire a new professional: a guy who used to work for Sony in Liverpool arrived. That's when I was made **team leader**: along with project management, I re-centered my efforts on **Foley and field recording for both realtime and video cues effects**.

### Sound effects

Despite having several sound effects libraries at my disposal, **I wanted to create the effects** myself, hence a request to equip the studio with a few mics. Around the end of 2001, a demo was scheduled to be shown in London, in order to obtain a **license to develop for the Playstation2**. Most of the sound commentary present in cue scenes were made using a combination of **Foley in the studio and field recording**.

<p class="detached">The following teaser includes processed recordings of:</p>

- myself typing on a mechanical keyboard
- several thunderstorm in Milan
- many wooshes using belts and other artifacts
- metal hits
- wheeled chairs moved on irregular surfaces
- multiple compressed air cans
- colleagues making voices
- newspapers moved around in the studio
- cat collar with a ring
- a number of Korg Trinity's synth presets
- a colleague imitating his own dog

The editing and the final authoring were made with **Sound Forge**, **Vegas Pro** and **Logic Audio Platinum**.

{% include pattern-video.html id="X4eQAhk6dKM" %}

### Xbox

After obtaining a license to develop the game for the Playstation2, we tried for a while to get _Ruff Trigger_ to the **Xbox** as well. Numerous **SDKs arrived from Microsoft**, including a transparent one for the audio team. I learned the version `1.0` of their middleware [XACT](https://en.wikipedia.org/wiki/Cross-platform_Audio_Creation_Tool) along with **audio optimizations and version control** using [Alienbrain](https://www.alienbrain.com/).

{% include pattern-figure.html image="/assets/images/xact_microsoft.jpg" caption="Microsoft XACT v2.0" width="850" height="540" %}

The dev team in Playstos had done a great job integrating all the required Xbox libraries and dependencies, so that we could work with XACT using **calls from the game engine** to trigger both sound effects and the adaptive soundtrack.

For a year or so, the audio team had to manage and implement audio for both Playstation2 and Xbox, using different tools, assets and specifics.


### Game Developer Conference and G.A.N.G.

In January 2002 I was informed that I'd be one of twelve colleagues who would attend the [Game Developer Conference](https://gdconf.com/) in San Jose (California). The slogan for that edition was _Make Better Games_.

{% include pattern-figure.html image="/assets/images/gdc-entrance.jpg" caption="The entrance of the McEnery Convention Center in San Jose" width="640" height="480" %}

Around **ten thousand people** took part that year. A formative experience, it pushed me out of my comfort zone like anything has ever done before. I met with strangers, exchanged views and contacts, wandered around the suburbs alone, and took an astounding amount of notes. 

The pinnacle was probably the keynote given by [Martin O'Donnell](https://en.wikipedia.org/wiki/Martin_O'Donnell), audio director for Bungie. I experienced **_Producing audio for Halo_** in a room filled up to the brim with people. Besides the technical aspects of him showing production screenshots and actual tricks, along with praises to Microsoft for letting him work with a Macintosh, I remember filling half a notebook with notes about how **sound can empower a non-linear story**.

One extra event that I took part in was on the 21<sup>st</sup> of March: **the foundation of the [Game Audio Network Guild](https://www.audiogang.org/)**, with Tommy Tallarico and many others. I still have my bronze member certification from that day.

### After the GDC

Back in Milan, something happened. I went to work optimistic and excited about the vast amount of knowledge and inspiration I gained at the GDC. However, after a week of silence, I _had to ask_ for some meeting where we could exchange feedback and reciprocal insights. Alas, **none of what I learned in California got implemented at Playstos**, and that left me bewildered and disappointed.

### Team management

During my stint at Playstos I happened to **manage five people** including myself. The best time was between 2002 and 2003 — two sound engineers and an audio programmer working together in the same studio that I built. I attended plenty of meetings where I voiced our concerns and requests, **co-ordinated with the game producer** and guaranteed we met the agreed schedule.

## Why I left Playstos

### Politics

During the second half of 2002 and the whole of 2003 the company internal dynamics deeply changed. Despite being built at the start of 2000 as some sort of family, the growing difficulties started to show cracks. Confidence progressively dried out, which soured the relationships between colleagues. People were fired, which rapidly turned the initial friendly atmosphere into **gloomy politics**.

### No publisher

Another constant issue was the **lack of interest shown by high-level publishers**. The game had to change, to appeal to smaller entities. New hirings with high levels of seniority arrived and were given full discretionary powers. Someone who were there since the beginning didn't take it too lightly and left. I personally tried to navigate the situation at my best, though it wasn't precisely _Happy Days_.

### Whatever the cost

Many of the new team leaders and producers criticized the game as it was. Basically, what was _Ruff Trigger_ as I knew it, changed over twelve months. I wasn't having fun anymore: I supported a few decisions whilst disputing others, and was basically asked to _stop creating problems_. At the end of 2003 it looked like the sole goal was to cut corners and **let the game out whatever the cost**.

### Burnout

I asked to modify my contract and obtained a new relationship with the company at the beginning of 2004. **I worked from home**, away from the suffocating office politics. I was paid per minutes of delivered music, though the sound effects were now internally handled by my former colleague from Liverpool. I even got a special VPN connection so that I could use the internal assets system, only going to the studios once a month to check on the progress. Despite the renewed situation, I discovered how much burned out I was: I spent many nights at Playstos, working double and triple shifts — the impending feeling of "it was for nothing" was weighing me down. In the meantime, _Ruff Trigger_ kept spiralling down, rapidly turning into a budget game. **At the end of that year, I left**.

## Aftermath

Once Playstos managed to find a publisher (Natsume), the game completed its transition from a multi-platform ambitious project to something easily forgettable. I was gobsmacked when I saw it, but clearly the company decided for a U-turn. In terms of audio, they offloaded it to a third party, so most of my contributions were relegated in the credits as "prototype sound designer".

{% include pattern-figure.html image="/assets/images/playstos-ruff-trigger.jpg" caption="The official packaging" width="458" height="640" %}

### Mixed reactions

I've read (and watched) terrible feedback about _Ruff Trigger_ along with others that aren't so negative. In hindsight, they were all predictable. The game was always going to be something heavily inspired by _Ratchet and Clank_ and _Jak and Daxter_. Clearly, the company decided to sacrifice the initial ambition and try to limit the economic loss.

### What I learned

After my experience with Playstos, I decided to see future colleagues as people with whom I shared a profession and eight hours a day. I later enjoyed lighter but more tranquil work relationships. Despite this, I met at Playsts several of my current long-lasting best friends, my wife above all. Another important takeout was to **ask for a clear recognition** of what I've contributed to, on a contract. As a minimal example: I created the official font for _Ruff Trigger_.

**I now see that experience in a positive light**, and patched things up with the CEO a few years ago in London. In the UK I also managed to find a satisfying colleague/friend balance within the design & dev firm I co-founded, UI Farm.

### Why didn't I join another game company

Even though I kept working as a sound designer, things got interesting in web design. What started as time off the game industry turned into a different kind of career. In 2017 I became again involved with the idea of being a part of an audio-visual narration. I wrote an autobiographical concept album, where a few songs were made of **[unused music](/blog/skinny-kid-song-backstory/) from the Playstos years**. 

Initially conceived as a theatrical piece, it prompted me to think about **going back to game audio**. While I started studying Wwise, FMOD and their relation with the two major game engines, I got to work as a [sound designer for Paris-based Amuse Animations](/work/sound-design/car-city-cartoon/).