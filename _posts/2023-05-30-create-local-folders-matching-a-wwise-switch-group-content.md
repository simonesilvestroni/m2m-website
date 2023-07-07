---
title: Quickly create local folders matching the content of a Wwise Switch Group
date: '2023-05-30 10:38:37'
last_modified_at: '2023-05-30 10:38:39'
tags:
  - 'audiokinetic'
  - 'game audio'
  - 'middleware'
  - 'sound design'
  - 'technical sound design'
  - 'video game'
  - 'wwise'
description: 'While working on a test project based on a video series by Cujo Sounds called ‘Setting up a AAA Wwise project’, I envisioned a method to speed up the process.'
typora-root-url: ../
---
Provided that a certain knowledge of Wwise is required, these [didactic videos by Bjørn Jacobsen](https://www.youtube.com/@CujoSound/search?query=Setting%20up%20a%20AAA%20Wwise%20project) are brilliant and I highly recommend them. The entire brief course is built around the idea of "making a game in a fictional Wwise environment to eventually have a project that will fully work without a game". The chapter I'm focusing on is called _Part 5: Complex footstep switching with simple <abbr title="Real Time Parameter Control">RTPC</abbr>s_.

## The Wwise project

In a quest to teach how to think ahead, he creates a project that will allow the player to have proper footsteps sounds based on different surface materials, in different wetness conditions. 

The Switch Group called _GroundMaterialSwitch_, under Game Syncs, contains 23 switches. They're interconnected with another switch related to the wetness of the ground itself, _GroundWetnessSwitch_, and driven by an RTPC called _RTPC_GroundWetness_, under Game Parameters.

The Switch Container in Project Explorer, called _PLYR_Footsteps_MaterialSwitch_, reflects the same structure, so it contains 23 Switch Containers following the naming convention `{material}_WetnessSwitch`. Therefore, for the material switch _Dirt_ inside my Switch Group, I'll have a Switch Container named _Dirt_WetnessSwitch_, and so on.

![My Wwise project, showing the switch container (left), and the switch group (right)](/assets/images/wwise-footsteps-switch.jpg){: width="1024" height="622"}
*My Wwise project, showing the switch container (left), and the switch group (right)*

## Adding sounds

Bjørn gives an insight on how to manage audio assets in the filesystem: it's a good idea to have a root folder called `Originals` containing subfolders based on a structure consistent with the Wwise project:

```
📂 Originals
└─ 📂 SFX
   ├─ 📂 Locomotion
   ├──── 📂 Dirt
   ├──── 📂 Forest
   ├──── 📂 [etc]
   └─ 📂 TestFiles
```

I suppose this shouldn't be new to anyone who has worked with Audiokinetic's middleware tool, especially if they've [integrated REAPER with Wwise](https://www.audiokinetic.com/en/library/reawwise/?source=ReaWwise&id=reawwise).

### The issue

What I want to improve is the process of creating local folders that mirror the same structure of the Wwise project. In my current example with 23 Switch Containers, each one needs a local folder where to put sound assets that will be imported in Wwise. Instead of manually copy the switch names and use them to create 23 new folders in my filesystem, I devised a more efficient method.

{: .warning }
**Note** — The following solution is based on macOS (10.14), using GNU bash version 5.2.15. I'm not sure whether it's possible to replicate the same steps on Windows, maybe using [<abbr title="Windows Linux Subsystem">WLS</abbr>](https://learn.microsoft.com/en-us/windows/wsl/about).

{: .list-hr }
- In Finder, go to the folder `Switches` under the Wwise project directory.
- With a code editor, open the Work Unit where the Switch Group is, in my case: `Default Work Unit.wwu`.
- Find the Switch Group, in my case: `<SwitchGroup Name="GroundMaterialSwitch" ID="{CE340E43-285B-4633-92EB-BA5E6B004F9D}">`.
- The content of the `<ChildrenList>` item is copy-pasted in a new empty file called `switches` saved on the Desktop.
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
- Proceed to extract the single switch names using the command `awk` in a Terminal session:
  ```
  $ awk -F '"' '{print $2}' ~/Desktop/switches > ~/Desktop/switches_names.txt
  ```

The resulting `switches_names.txt` content:

![Text file containing my switch names](/assets/images/wwise-switches_names.png){: width="331" height="382" }
*Text file containing my switch names*

At this point, creating the folders based on the above list is easy: the following command will create a directory for each switch name:

```
$ xargs -tI % mkdir % < ~/Desktop/switches_names.txt
```

#### Before

The Finder window that will contain the switches folders:

![The Finder window that will contain my switches folders](/assets/images/wwise-switches-folders-empty.png){: width="1024" height="582" }

#### After

The Finder window after it's been populated by the `xargs` script:

![The Finder window after it's been populated by the xargs script](/assets/images/wwise-switches-folders-populated.png){: width="1024" height="582" }

## Conclusions

The above process might look laborious, depending on the level of familiarity with a shell window, however:

- there won't be mistakes in the folder names, since it's all being directly copied from Wwise's XML source;
- if the folders to be created are numerous, the manual process would be way slower and quite tedious;
- it's easy enough to [create bash aliases](https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html) so that the input is reduced to the bare minimum.

The same procedure can be adopted for similar tasks, including for the aforementioned REAPER integration. Of course, if the switch names come from an assets spreadsheet, there's no need to dwell in Wwise's XML projects — the only command needed is `xargs`.