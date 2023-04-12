---
title: 'Explorer by Sound Particles'
date: '2022-06-22 14:56:43'
last_modified_at: '2022-06-22 14:56:49'
author: 'Simone Silvestroni'
tags:
  - 'audio tools'
  - 'metadata'
  - 'music production'
  - 'sound design'
  - 'sound particles'
  - 'sound manager'
description: 'Explorer is a free audio application for managing sounds. Working with mono, stereo and surround, it can find, organize, edit and integrate files in a DAW.'
syndication: true
syndicate:
  - name: Mastodon
    url: https://indieweb.social/@m2m/108521965165452360
---
After downloading the program just over a month ago, I've finally started using it. It's currently the best sound manager I've ever used — especially at this price point. It's intuitive, powerful, elastic and shows all the info I might need from a sound manager. Here's a quick look at its features.

## Interface

Clearly designed with a multi-platform release in mind, Explorer is organized in four panels, of which three can be optionally hidden: the left and right sidebars and the bottom waveform viewer.

{% include pattern-figure.html image="/assets/images/explorer-interface.jpeg" alt="Explorer by Sound Particles, screenshot of the full interface" caption="Explorer by Sound Particles, the full interface" width="1024" height="622" %}

I find the software well thought and designed: all the needed information are clearly visible, either in the right-side inspector or directly in the central area, where I can show and hide more or less columns.

## Organization

### Multiple databases

The full catalogue can be organized in multiple separate databases. In fact, I keep all the sounds related to music production in one database, separated from a second database solely focused on sound effects.

### Tabs

There are four main tabs in the left sidebar.

| Tab       | Content                                                      |
| --------- | ------------------------------------------------------------ |
| <kbd>Category</kbd>  | Explorer will categorize all the imported sounds into categories, following the [Universal Category System](https://universalcategorysystem.com/). Super useful for sound design. |
| <kbd>Playlists</kbd> | I can organize sounds that I need to pick up quickly and often. |
| <kbd>Folders</kbd>   | Mimics the folder structure of the imported files. If your local libraries are well organized, this would make for a familiar navigation. |
| <kbd>Audio</kbd>     | Lists the catalogue by audio features, such as sample rate and more. |

![Explorer sidebar: category tab](/assets/images/explorer-sidebar-category.png)
![Explorer sidebar: playlist tab](/assets/images/explorer-sidebar-playlist.png)
![Explorer sidebar: folder tab](/assets/images/explorer-sidebar-folder.png)
![Explorer sidebar: audio tab](/assets/images/explorer-sidebar-audio.png)

## Search

The software is capable of creating search tags by category, playlists, folder paths, flagged audios, or audio file properties such as sample rate, file format and more. Includes searching for keywords and excluding words, setting matching conditions and having multiple searches at the same time.

## Workflow

Once a search has produced interesting results, I can click on a file and see its waveform in the bottom panel. From there I can select sections and or edit using basic functions such as: 

- reverse
- pitch shift
- clip gain (amplify)
- polarity inversion
- reverse
- whoosh effect
- normalization

It’s also possible to convert mono to stereo, stereo to mono or to multichannel formats such as surround and ambisonics. A mid-side option is also present but I haven’t used it yet.

A further useful feature is a visual representation of a clipped audio, shown in the waveform and its miniature as a vertical red line.

{% include pattern-figure.html image="/assets/images/explorer-peak-over.png" alt="Section of a waveform file showing an overload peak of 0.1dB" caption="Section of a file showing a peak of +0.1dB" width="720" height="602" %}

### Editing

It’s possible to edit, cut, copy and paste, select and apply fade-in and fade-out. An export option allows to save as `wav`, `aiff` or `flac`, apply a bit depth of 16, 24 or 32 bit floating point. Options to sample rate conversion and metadata inclusion are present as well.  Please note that the audio can also be shown as a spectral view by clicking the <kbd>FFT</kbd> button in the transport bar.

The scope where I would use Explorer the most, besides looking for interesting samples for music production, is sound effects. Finding sounds, selecting the right section, editing if needed and sending the piece of audio to [my DAW](/blog/daw-from-logic-to-pro-tools-to-reaper-part-1/) is super easy — just right-click on the wave selection and choose Spot to → Reaper. Other popular DAWs are present, such as Pro Tools, Logic and Nuendo.

{% include pattern-figure.html image="/assets/images/explorer-send-to-daw.png" alt="Section of a sound file and the functionality to send it over to a DAW" caption="Explorer can send the selected audio to a DAW" width="1024" height="622" %}

## Info

I think it's pretty unbelieavable that this piece of software is completely free. [Download it for macOS and Windows](https://soundparticles.com/products/explorer).

<div class="notice">
  <h3>Edit: March 2023</h3>
  <p>After a recent update, Explorer became slower, sloppy to the point of being unusable, at least on my older machine. I'm not sure if the addition of a — for me unwanted — cloud-based sample shop is at the root of the lack of performance, either way I switched to <a href="https://www.youtube.com/watch?v=zwTzHOedfYg">Reaper's Media Explorer</a>.</p>