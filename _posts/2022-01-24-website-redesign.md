---
title: 'Website redesign'
date: '2022-01-24'
last_modified_at: '2022-01-24 18:14:59'
tags:
  - 'internet'
  - 'software'
  - 'sustainability'
  - 'web development'
description: "Minutes to Midnight’s new redesigned website is easier to navigate and straight to the point. Built with Jekyll, Github and Netlify."
---
## Platform

While the recent versions had been running on WordPress, it's now switched to [JAMstack](https://jamstack.org/what-is-jamstack/). All code is handwritten.

## Decentralized conversations

The website is now part of [Indieweb](https://indieweb.org/), therefore it's capable of sending and receiving [webmentions](https://alistapart.com/article/webmentions-enabling-better-communication-on-the-internet/), a web standard for replying, liking and reposting other people's posts on their websites.

## Small web

> Most websites today are built like commercial products by professionals and marketers, optimised to draw the largest audience, generate engagement and 'convert'. But there is also a smaller, less-visible web designed by regular people to simply to share their interests and hobbies with the world. A web that is unpolished, often quirky but often also fun, creative and interesting.
> <cite>[Parimal Satyal](https://neustadt.fr/essays/the-small-web/)</cite>

## Sustainability and performance

The fight against a bloated web is a crusade I've been part of for a long time. See [this digest from Silvia Maggi](https://silviamaggidesign.com/design-digested/biased-ai/#webwaste) about the book _Webwaste_. Minutes to Midnight's previous website weighted around `730 MB`, while it's now shrunk to `26 MB`.

The homepage is `56 KB` uncompressed and loads in less than half a second.

## Accessibility

Besides being fully validated, the site doesn't have Javascript functionality preventing a page to be fully visible at any time. Nothing in the website depends on it. The dynamic [search engine](/search/) has an HTML alternative provided in the same page and the other script is processing webmentions. The website is fully accessible with Javascript turned off.

## Tracking and surveillance

No cookies, no analytics, no tracking people.

{: .cta }
[A full case study is on my development website](https://simonesilvestroni.com/project-minutes-to-midnight/)&nbsp;→