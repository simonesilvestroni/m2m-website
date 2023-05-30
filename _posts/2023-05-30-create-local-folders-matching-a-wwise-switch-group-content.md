---
title: Quickly create local folders matching the content of a Wwise Switch Group
date: '2023-05-30 10:38:37'
last_modified_at: '2023-05-30 10:38:39'
tags:
  - 'audiokinetic'
  - 'game audio'
  - 'sound design'
  - 'technical sound design'
  - 'video game'
  - 'wwise'
description: 'While working on a test project based on a Cujo Sounds’ video series about how to set up a AAA Wwise project, I envisioned a method to speed up the process.'
---
Provided that a certain knowledge of Wwise is required, these [didactic videos by Bjørn Jacobsen](https://www.youtube.com/@CujoSound/search?query=Setting%20up%20a%20AAA%20Wwise%20project) are brilliant and I highly recommend them. The chapter I'm focusing on is called _Setting up a AAA Wwise project - Part 5: Complex footstep switching with simple RTPCs_.

## The Wwise project

The chapter is focused on a smart way to create a switch container for the player footsteps. In a quest to think ahead and create a project that will allow the player to have proper footsteps sounds based on different surface materials, the Switch Group called `GroundMaterialSwitch` contains 23 switches.

The Switch Container called `PLYR_Footsteps_MaterialSwitch` reflects the same structure, so it contains 23 Switch Containers following the naming convention `{material}_WetnessSwitch`. Therefore, for the material switch `Dirt` inside my Switch Group, I'll have a Switch Container named `Dirt_WetnessSwitch`, and so on.

{% include pattern-figure.html image="/assets/images/wwise-footsteps-switch.jpg" alt="My Wwise project, showing the switch container (left), and the switch group (right)" caption="My Wwise project, showing the switch container (left), and the switch group (right)" width="1024" height="622" %}

## Adding sounds

Bjørn gives an insight on how to manage audio assets in the filesystem: it's a good idea to have a root folder called `Originals` which contains subfolders based on a structure consistent with the Wwise project:

```
📂 Originals
└─ 📂 SFX
   ├─ 📂 Locomotion
   ├──── 📂 Dirt
   ├──── 📂 Forest
   ├──── 📂 [etc]
   └─ 📂 TestFiles
```

I suppose this shouldn't be new to anyone who has worked with Wwise, especially if they've [integreated REAPER with Wwise](https://www.audiokinetic.com/en/library/reawwise/?source=ReaWwise&id=reawwise), though it's worth repeating.

### The issue

What I want to improve is the process of creating local folders that mirror the same structure of the Wwise project. In my current example I have 23 Switch Containers, each one needing a local folder where to put any sound assets that will be imported in Wwise. Instead of manually copy the switch names and used them to create 23 new folders in my filesystem, I devised a more efficient method.

{: .warning }
**Note** — The following solution is based on macOS. I'm not sure whether it's possible to replicate the same steps on Windows, but I'll try. Will post an update if I find a way (probably using [<abbr title="Windows Linux Subsystem">WLS</abbr>](https://learn.microsoft.com/en-us/windows/wsl/about)?).

{: .list-hr }
- In Finder, I open the folder `Switches` under my Wwise project directory.
- With a code editor, I open the Work Unit where the Switch Group is, in my case: `Default Work Unit.wwu`.
- I find the Switch Group I’m working on — in my case: `<SwitchGroup Name="GroundMaterialSwitch" ID="{CE340E43-285B-4633-92EB-BA5E6B004F9D}">`.
- The content of the `<ChildrenList>` item is copy-pasted in a new empty file called `switches` saved on my Desktop.
- After pruning tabs and spaces at the beginning of each line, this is the resulting content:
  ```
  <Switch Name="Dirt" ID="{3840C5F2-2A61-446D-A0B3-DD17F244B85D}"/>
  <Switch Name="Gravel" ID="{53E3F231-E68C-4289-A68D-1A67EB3051F8}"/>
  <Switch Name="Sand" ID="{1338FA64-99D1-4A81-9AE8-3C07D6F99F02}"/>
  <Switch Name="Forest" ID="{BF071261-27D6-4AE4-9746-3EA172654089}"/>
  <Switch Name="Grass" ID="{C22E57E2-99C6-407A-871A-0785DF5D63B0}"/>
  <Switch Name="Flowers" ID="{BB16ECA2-6508-4E8D-BB19-9D38C6F59226}"/>
  <Switch Name="ForestPine" ID="{57E00A82-4C39-411E-9407-E2EDFAA593CC}"/>
  <Switch Name="Ice" ID="{F54DD30B-78BB-4CCD-8847-62743F907974}"/>
  <Switch Name="Leaves" ID="{E6E0F142-22A6-4E1F-8C66-7DF5E06B455C}"/>
  <Switch Name="Marsh" ID="{C81CD7A9-9818-4A69-A1F0-7C5865907963}"/>
  <Switch Name="PuddleDirt" ID="{C0304BF8-4E9E-45D7-B23A-249CE4A7429E}"/>
  <Switch Name="PuddleGrass" ID="{018C0AB2-9433-461F-86E5-5AD41E403CDE}"/>
  <Switch Name="Rock" ID="{9780F7CA-E4C3-48E4-A756-3D790CDD039A}"/>
  <Switch Name="Snow" ID="{BA8C2AEC-2FAA-4610-A661-ADCCEC20A42E}"/>
  <Switch Name="Stone" ID="{A85AE1E2-FA8E-46C9-97DF-D4BA3C74A8D1}"/>
  <Switch Name="StoneFloor" ID="{3B3ABCDF-C621-4F43-A709-9E24C0C8DE78}"/>
  <Switch Name="Swamp" ID="{36EA176C-9DCC-4CF3-B03B-FAE077C6006C}"/>
  <Switch Name="Tiles" ID="{CED50554-A79C-4EEB-9F81-1AAE0B93EA08}"/>
  <Switch Name="Water" ID="{4CEB20B8-827F-4A69-A4B2-C552BEA825C5}"/>
  <Switch Name="WaterPuddle" ID="{928F79CB-5030-4A3B-97B1-BF78FFB536F4}"/>
  <Switch Name="Wood" ID="{4C74D828-835C-421B-9D54-794B6A38196B}"/>
  <Switch Name="WoodFloor" ID="{302E8991-2E81-4960-B744-9D5269BE0081}"/>
  ```
- I then proceed to extract the single switch names using the command `awk` in a Terminal session:
  ```
  $ awk -F '"' '{print $2}' ~/Desktop/switches > ~/Desktop/switches_names.txt
  ```

The resulting `switches_names.txt` content:
  
{% include pattern-figure.html image="/assets/images/wwise-switches_names.png" alt="Text file containing my switch names" width="331" height="382" %}

At this point, I can quickly create the folders based on the above list: I open the root folder of my video game project in a Terminal window and type the following command, which will create a directory for each switch name:

```
$ xargs -tI % mkdir % < ~/Desktop/switches_names.txt
```

#### Before

{% include pattern-figure.html image="/assets/images/wwise-switches-folders-empty.png" alt="The Finder window that will contain my switches folders" caption="The Finder window that will contain my switches folders" width="1024" height="582" %}

#### After

{% include pattern-figure.html image="/assets/images/wwise-switches-folders-populated.png" alt="The Finder window after it's been populated by the xargs script" caption="The Finder window after it's been populated by the xargs script" width="1024" height="582" %}

## Conclusions

The above process might look laborious, depending on how familiar working within a shell window is, however:

- there can be _no mistakes_ in the folder names, since it's all being directly copied from Wwise's XML source;
- if the folders to be created are in large numbers, the manual process is going to be quite tedious;
- it's easy enough to [create aliases](https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html) so that the Terminal input is reduced to the bare minimum.

Of course, the same procedure can be adopted for similar tasks, including for the aforementioned REAPER integration.