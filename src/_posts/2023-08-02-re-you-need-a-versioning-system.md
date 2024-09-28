---
title: 'Reply: You need a versioning system'
date: '2023-08-02 15:19:54'
last_modified_at: '2023-08-02 15:19:56'
tags:
  - 'music production'
  - 'reaper'
  - 'software'
  - 'workflow'
summary: 'A quick reply to the excellent post by Jamie Hill about the need of a strict versioning system for people who work in music (on the computer).'
---
Jamie Hill [argues for a backup system](https://jamieslist.deptofenergymgmt.com/p/you-need-a-versioning-system), and rightly so. Although his post outlines the exact same manual, effective, simple methodology I'd been using for many years, I felt compelled to write down a reply with my current procedure. Disclaimer: while Jamie uses Pro Tools, his way can be indeed applied to every <abbr title="Digital Audio Workstation">DAW</abbr>, while mine is exclusively related to <abbr title="Rapid Environment for Audio Production, Engineering and Recording">REAPER</abbr>. Two years after my [switch from Pro Tools]({{ site.url }}/blog/daw-from-logic-to-pro-tools-to-reaper-part-1/), I keep finding improvements to my workflow, and this is one of them. What I'm currently doing to save multiple progressive versions of my work: 

- I hit <kbd>⌘&nbsp;S</kbd> (<kbd>⌃&nbsp;S</kbd> on Windows and Linux). 

_That's it_. Under the hood, REAPER is saving a new version of the project, adding an automatic increment number to the filename. REAPER's actions panel is where the magic happens:

![Screenshot of the action panel in Reaper, with the File: Save new version of project action selected](/assets/images/reaper-saveasnewproject.png){: width="1024" height="698" }
_The action panel in Reaper_

All I had to do was finding the correct action (or build a custom one if nobody thought of it), and add the shortcut usually associated to saving a project. I'm _de facto_ hijacking the "save" command here. The result is that every time a session is saved, the project changes its filename, while the previous one stays in the same folder as a backup. Granted, I can end up with a large number of files, but that's fine: they don't weigh much, plus I take care of moving the versions to my backup sub-folder at the end of a work day.

If this is not ideal, a good alternative is the technique I'd been using until a few months ago: REAPER's automatic backup system. It's in the preferences:

![Screenshot of the preference window in Reaper, where the field 'Save to timestamped file' is circled in red](/assets/images/reaper-projectsettings-backup.jpg){: width="1024" height="675" }
_Reaper preferences window_

The pros of this second method are clear: the software takes care of both the versioning _and_ moving the backups in a sub-folder. Why did I switch? Because I want to determine the point of a new version when I save the session, which is when a substantial change that needs preserving has happened. A method based on _x minutes_ doesn't mean much to me.