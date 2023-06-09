---
title: Erasing things
date: '2023-05-12 11:34:56'
last_modified_at: '2023-05-12 11:34:58'
tags:
  - 'personal'
  - 'web development'
description: 'I’ve been using this website as a platform to experiment visual solutions that might appease my aesthetic sense, and at the same time be more accessible for everyone.'
---
That's fine, many people from my RSS list are doing the same, it's kind of a perk of having a personal place on the internet. As my friend Claudio — who happens to work as a Ruby programmer — keep saying: part of being a good developer is the ability to know _what code to delete_.

Since I naturally agree with him, I think I've been going further than that as of lately. I kept working on pages and posts, removing redundant bits, clearing typos, trimming tautologies. However, I haven't been happy with how my website _looked_ for a while now. Too much visual noise, not minimalistic enough.

## Full screen

Last week, Matthew wrote about [dropping the narrow column in the middle of the screen](https://starbreaker.org/blog/your-screen-is-tasty/index.html). That inspired me, so I refactored my user interface using a git branch. It only took a few hours, yet towards the end I started getting itchy about how busy it looked. After a `git merge` and a push, it was live. Despite being totally okay with how Matthew's website looks and behaves, I disliked my redesign.

It stayed online for slightly more than twelve hours.

![Screenshot of a short-lived version of my site in full-screen mode](/assets/images/styles-short-lived.jpg){: width="790" height="354" }

## Synchronicity

Three events happened simultaneously.

First, I dug into my archives and found a version of my old personal website from 2007, built in vanilla HTML and CSS.

Morula.org was a _personal_ blog that I started in 2002 to vent my frustrations as a (crunch) worker in the video game industry. It later became a way to document the trauma of losing a loved one to suicide — it was so intimate that I'd decided to erase it from the internet, [including the Wayback Machine](https://web.archive.org/web/20230000000000*/morula.org).

![Screenshot of my old website](/assets/images/styles-morula.jpg){: width="790" height="435" }
*Morula.org in 2007, with the blog stripped out*

The second thing was the realisation of how I've been using Feedbin and a Reader extension for Firefox for many months: both featuring a custom CSS that I wrote with a _specific typography in mind_. The combination of [Seravek](https://seravek.com/) for headings and spare navigation elements, coupled with [Iowan Old Style](https://en.wikipedia.org/wiki/Iowan_Old_Style) for the body, appease a long-time attraction to Gill Sans and elegant serifs.

![Screenshot of my customised Feedbin](/assets/images/styles-feedbin.jpg){: width="790" height="481" }
*Feedbin in Firefox, showing my custom CSS applied*

![Screenshot of an article viewed in my reader extension for Firefox](/assets/images/styles-firefox-reader.jpg){: width="790" height="449" }
*An article in my reader extension for Firefox*

I posted the above article from [Leon Paternoster](https://www.thisdaysportion.com/) on purpose, because the synchronicity was uncanny: after reading his writings through RSS, I went to see the website in its entirety for the first time. I was gobsmacked to see that it was designed _precisely_ how I wanted to transform mine:

- same typography as I've been using _privately_ for a long time.
- same minimalistic use of colour, including the top border that was present in my 2007 personal website.
- a reduced set of navigation menus.
- no frills.

That was it. These things rarely happen to me, so I seized the moment and redesigned the site once again. While it might look like a rip-off from Leon's, it's truly reminiscent of my old blog, with a typography I'm already used to.

## Happy now?

Yes! I reached the goal I was looking for — at least for a while. It's clean, minimalistic, essential, and features the three colours I love the most: black, white, olive green. The fact that _two full redesigns_ were done in less than a day, cumulatively, is also proof of how flexible and powerful SimpleCSS is, so [praise to Kev, Luke and others](https://github.com/kevquirk/simple.css).

### Changelog

- Consolidated several pages, especially [About](/about/) and [Contact](/contact/).
- Improved accessibility by adding a `focus-visible` style to links, thanks to [Silvia](https://silviamaggidesign.com).
- Reduced the overall weight once again. The homepage is now just under `29 KB` (uncompressed).
- The minified CSS has shrinked from `36 KB` to `13`.
- Reached a level of carbon footprint that I'm not sure if it's real or a glitch in the benchmark: [`0.00 g` of CO<sub>2</sub>](https://www.websitecarbon.com/website/minutestomidnight-co-uk/).

### Future improvements

I've been on the fence about webmentions for a long time now. I keep seeing people I admire [dropping them altogether from their sites](https://brainbaking.com/post/2023/05/why-i-retired-my-webmention-server/), for reasons that I agree with. The spam is still at a manageable level, but it's very likely I'll be axing them from this site as well. Of course, I'll be deleting some more code and copy here and there. Getting to the core of things is a beautiful journey.

Now, back to completing my Wwise certifications.