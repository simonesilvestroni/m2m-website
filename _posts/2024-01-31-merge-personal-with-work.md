---
title: 'How I learned to stop worrying and merge personal with work'
date: '2024-01-31 01:02:19'
last_modified_at: '2024-01-31 01:02:27'
tags:
  - 'personal'
  - 'web development'
description: 'Over the last few weeks I’ve introduced changes to the website. While the design has received relatively minor tweaks, and a new typeface, structure and language have substantially shifted.'
---
## I am large, I contain multitudes

After an inconclusive poll on Mastodon, where the question ‘*should I merge my work and personal websites or leave them separate?*’ produced a perfect 50% split, I had decided to merge. My goal was to represent the fact that I'm a person with interests that comprise — and at the same time go beyond — any side of myself. I absolutely didn't want to go back to projecting a *personal brand*, nor hide the fact that I have an eclectic professional life.

My solution was to keep the *personal* approach dominant. After porting all the case studies over from my web development work site, I created two landing pages, one for each professional side: [sound design](https://sound.minutestomidnight.co.uk) and [web development](https://dev.minutestomidnight.co.uk). Structured as proper CVs,[^1] they live in subdomains, allowing me to send a single link to recruiters or whoever might be interested in the minutiae of my work life.

I've come to detest personal websites that look like a business card, where the owner's job role is shouted in gigantic typefaces on a full-screen "hero header". Marketing lingo[^2] coupled with corporate-like design are creeping up everywhere on the internet, and I want to stay out of it. My website continues to be personal, while still offering ways to find out what I do for work. By refusing to cater for a specific category of people, I'm trying to keep it true to who *I am*, and what *I do*, without thinking if that should represent a public persona or not. 

I enjoyed reading [*Which self is this?* by Rachel Kwon](https://kwon.nyc/notes/which-self-is-this/), and while I understand the fundamental question underlining the post, my way out is to embrace the *wholeness*.

## Changes

Work-related posts have several point of entry, without being accessible from the main navigation. To reinforce the concept of [duality that has always accompanied me]({{ site.url }}/about/), all the case studies, redesigned and optimised, are now regular [blog posts]({{ site.url }}/blog/).

Soundcloud and personal YouTube embeds have been replaced by standard HTML `<audio>` and `<video>` objects. Having already wiped out a large amount of unwanted third-party bloat, I'm going to keep going by replacing the remaining YouTube videos with equivalent from Invidious instances.

Both primary and secondary navigation have been simplified, with some pages deleted or consolidated. I removed the last remnants of the *personal brand* era from most places, especially in the now rewritten [About page]({{ site.url }}/about/). With that, a gigantic amount of more or less obvious tautology is also gone.

Jekyll has been updated and optimised, with fewer dependencies and include modules. Both layouts and stylesheets are sensibly improved, with a reduced number of classes to clutter the markup.

Reintroduced a minimalistic implementation of *parasocial* Open Graph meta tags, as suggested by [Matthew Graybosch](https://actualwebsite.org/index.html#fn6). While testing the results, I'd decided to re-check the whole site with [Lynx, a text-only browser](https://lynx.browser.org/) that doesn't support neither CSS nor javascript. It made me notice a silly but embarrassing bug, now fixed.

Finally, I temporarily removed the automatic switch to dark mode. I wasn't enjoying it myself, so I made the background less bright while still keeping a triple-A contrast for accessibility. The idea of an optional toggle for the dual colour theme is still there, however it's low priority right now.

[^1]: While I used to do this in 2005, I came to appreciate again the idea while debating with [Wouter Groeneweld](https://brainbaking.com/).
[^2]: "I help (add subject here) to do (long gaslighting job description)". It's like these people are ashamed to say that they work to earn money: instead, they *help*.