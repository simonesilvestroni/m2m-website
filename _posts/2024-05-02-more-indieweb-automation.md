---
title: More Indieweb Automation
date: '2024-05-02 20:17:38'
last_modified_at: '2024-05-02 20:17:40'
tags:
  - 'workflow'
  - 'internet'
  - 'software'
  - 'web development'
summary: 'Follow-up to a <a href="/blog/automation-for-my-blog-publishing-workflow/">previous case study</a> on how I automated my static website publishing workflow. This time, a lean Shortcut script is allowing me to write webmentions in seconds.'
---
For a while now I've been using notes to send Indieweb webmentions in the form of replies and likes. As these tend to be very short pieces, I thought again about how to bypass the annoying bits in the process of creating a note. When I experimented with Apple's Shortcuts to find ways to expedite my writing workflow, I discovered it can be a pretty powerful tool.

Unlike regular posts, likes and replies only require an URL, a name, and in the case of replies also a bit of written content. Everything else can be inferred automatically (date, file name, creation of the file, tags). That's when I decided to make the creation of a webmention with Jekyll as fast as possible. What I've ended up with is an icon in the Dock that I can click whenever I'm ready to reply or like someone's post. The applet asks me for:

- the URL of the post I'm liking or replying to;
- the name of the person that I'm mentioning;
- the title of the post (for likes only).

Everything else is created in the Shortcut automation:

{% include figure.liquid image='indieweb-automation-reply.jpg' alt='Screenshot of the Apple software Shortcuts showing an automation to publish content on my website' width='830' height='855' %}

Similarly to what I've achieved with the previous _new post_ automation, once I input the two required info in pop-up prompts, a file is created, the editor Typora is launched, a Terminal session is launched—and minimised in the Dock—with the proper alias commands to serve the website locally. At that point, I can write my reply and be done with it in a very short time.

After duplicating and adjusting the script for likes, I ended up with 3 automation icons: new post, new reply, new like.

{% include figure.liquid image='indieweb-automation-dock.jpg' alt='Screenshot of a section of a macOS Dock showing three blue icons for posting, and indieweb replies and likes' width='380' height='204' %}