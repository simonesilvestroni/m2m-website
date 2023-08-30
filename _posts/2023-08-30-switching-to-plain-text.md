---
title: Switching to plain text
date: '2023-08-30 09:48:05'
last_modified_at: '2023-08-30 23:30:23'
tags:
  - 'degrowth'
  - 'internet'
  - 'personal'
  - 'reaper'
  - 'software'
  - 'sustainability'
  - 'workflow'
description: '‘Degrowth’ series, part 6: now that I moved most of my workflow to plain text, I struggle to understand why I relied on proprietary locked-in formats for so long.'
---
I worked with a plethora of file formats throughout my multiple careers, while using both proprietary and open source software on different operating systems. For the last five years, I've been steering towards plain text. Why? The answer is manyfold: 

- future-proof file compatibility;
- also important: _backward_ file compatibility;
- disk space reduction;
- easier and quicker backup;
- easier data transfer between devices.

A vast amount of what I produce is now stored in some flavour of plain text — mostly `.md` (markdown), `.txt` or `.html`. Personal journals, work how-tos, email, websites, up to my to-do system. There's an abundance of  easy-to-use programs, across multiple operating systems, able to create, edit, and save plain text files.

![Screenshot of the markdown editor iA Writer on macOS, showing a document in split view, with markdown source on the left and its preview on the right](/assets/images/plaintext-howto.png){: width="1024" height="690" }
_My markdown-based to-do system, shown in iA Writer on macOS_

## Local is key

To be clear, when referring to plain text as a future-proof format, I mean _physical files_ that can be easily stored in personal folders and subfolders, searched and found in the filesystem, copied, moved, shared, compressed and more. Locked-in sync systems such as Google Docs, [Evernote](https://discussion.evernote.com/forums/topic/112176-where-and-how-is-evernote-stored-on-my-computer/) or [Apple Notes](https://www.howtoisolve.com/where-are-notes-stored-on-mac-local-notes-and-icloud-notes/) don't fit the description, at all.

## Notable example: digital audio workstations

The file format of Reaper — my <abbr title="Digital Audio Workstation">DAW</abbr> of choice — uses XML as its foundation, making it easy to be pushed to a git server if needed, for versioning and further session backup. For a quick comparison, I set up an empty project on both Logic Pro X and Reaper, using the same settings: a single track containing a 4-bars long empty MIDI object. Results: Reaper produced a single `5KB` file, while Logic's is actually a directory containing multiple folders and metadata files, amounting to a whopping `557KB`. Before recording a single note, Logic is already taking half a megabyte of disk space. I then proceeded to opening both projects with my code editor.

![Screenshot of a Logic project opened in a code editor, showing a bunch of folders and subfolders, containing binary files](/assets/images/plaintext-logic-project.png){: width="1024" height="667" }
_Logic projects look convoluted, and filled with proprietary binary files_

![Screenshot of a Reaper project opened in a code editor, showing an XML cascade-type](/assets/images/plaintext-reaper-project.png){: width="651" height="800" }
_Reaper projects are plain text, using XML as the foundation_

Besides the considerable difference in file size, the advantages might not be evident at first, so a personal anecdote might help. Arguably every audio professional has encountered the dreaded _corrupted project_ error while opening a music session to continue their work. Using again Logic Pro and Reaper as an example, how did I unlock the file? Regardless of what caused the "corruption", Logic almost always forced me to open a previous backup version — thus losing any work done after the last save. That was always a frustrating waste of time, whether a client was in the studio with me or not. When it happened with Reaper, I quickly opened the session with a code editor, searched for the last action I remembered doing before saving, and edited the line to a different value. The project started again: no headache, no trial-and-error debug pandemonium. Of course, I'm aware that wrangling around XML code might not be everyone's cup of tea.

## Conclusions

> If you're happy with what you got, you shouldn't let a new feature dictate how to change your workflow. Does one really need the features introduced in some software/hardware/tool in the past year? Wouldn't it make sense to use the things that have been battle-tested for at least a few years?
> <cite>Garrit Franke, <a href="https://garrit.xyz/posts/2023-04-07-older-is-often-better"><em>Older is often better</em></a></cite>

I wanted to close the sixth instalment of my [degrowth]({{ site.url }}/blog/tag/degrowth/) series with a meaningful quote. Garrit touched a point that's very dear to me: why do we feel the need to buy the latest thing when the one we've already got and know well is perfectly functioning? Going back to the future-proof nature of plain text, I'd argue that older machines — way older than my 2015 MacBook Pro — would especially enjoy such a workflow. Which is ultimately a crucial point of degrowth.