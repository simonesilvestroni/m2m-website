---
title: Clean, the cleanest I’ve been
date: '2023-04-26 15:07:03'
last_modified_at: '2023-04-26 15:07:05'
tags:
  - 'indieweb'
  - 'personal'
  - 'small web'
  - 'web development'
description: 'I changed the website with a under-the-hood reworking. It involved a structure clean-up, CSS polishing, and a refactor of my alt site.'
syndication: true
syndicate:
  - name: Mastodon
    url: https://indieweb.social/@m2m/110265774778640661
---
Having two websites, each with its own blog and overlapping content, didn't agree with me. I still wanted to keep my [web development site](https://simonesilvestroni.com/) separate. The best course of action was to migrate posts and relevant content in here, leaving the other site as some barebones *resume*.

It took less time than I thought, albeit a whole lot of attention was sucked into the task: redirects and canonical links are unforgiving beasts.

Both places are extremely clean right now, minimalistic and efficient. I took the opportunity to wipe out the Bootstrap remnants from the second site as well, which is great. 

While digging my old posts about web development, I've found a few bits here and there that I'd forgotten about. Turns out I've been ranting against web bloat and electronic waste for way longer than I thought. This fragment, from an article written in 2013 was interesting to read:

> We don’t set any custom web font in the parent main  theme, so we’re free to decide and set it up later in our child theme.  Also, if there’s no need for custom web typography we can use one of the old web-safe fonts. The less HTTP requests, the better, especially if requests are without any real use.

Apparently, I keep reinventing the wheel — or, in this case, rediscovering truths that I already knew.

With everything reduced to its core, I'm happy. This site is both a sound design portfolio *and my personal place*, where I can write about anything that interests me without worrying about who's reading, or fretting over catering to some external entity.

Sure, when the time to start applying for a new job has come, I'll have to set up a landing page, hidden from my navigation, the sitemap and the search crawlers. It'll be tailored to recruiters and people who don't have the time to read long posts, or rummage around navigation menus to find the relevant case studies. 

It's a win-win and makes perfect sense to me: the site is mine, the landing page is theirs.

## Changelog

{: .list-hr }
- I brought back my beloved [blogroll](/links/), now renamed as *Links* because [Matthew](https://starbreaker.org/) inspired me to do so.
- Re-imported several blog posts about [web development](/blog/tag/web-development/), including the long-form analysis over how I manage automation for my static site, indieweb integration, webmentions, and other how-tos.
- There is now a full [sitemap](/sitemap/), comprising pages, posts, tags.
- I wiped out my newsletter, including the archives and the subscription form. I'll be sending one last issue to subscribers, saying that the [blog RSS](/rss/) is the most meaningful place[^1] where to get updates.
- A massive reorganisation of all tags has been done, although that's more for myself, I guess.
- Links and icons to several online accounts have been removed, and that includes Spotify, Soundcloud and a few others. I'm still on the fence about LinkedIn and Github, we'll see.
- Reshuffled microformats code in the layouts, which made the [notes](/notes/) I use to send webmentions much more efficient and easy to use.
- I've added my favourite bass player in the quick facts section of the [About page](/about/#quick-facts).
- A few posts from 2002 and 2003 re-appeared in the blog. Someone on the internet called this _necroposting_.
- A whole lot of work on accessibility was carried out, with [very nice results](/credits/#accessibility).
- Finally, I've included a subset of my web development skills in here as well, because I realised how immensely useful they are when learning middleware audio implementation for video games, and also: they represent me too.

***

[^1]: For people who love receiving blog updates via email, services like [Feedrabbit](https://feedrabbit.com/) are a good fit.