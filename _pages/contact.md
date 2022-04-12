---
layout: page
title: Contact
date: '2021-11-08 10:31:25'
last_modified_at: '2022-04-06 23:14:48'
description: 'Interested in hiring me for your next project, or just want to connect? Find all the info, including (some) social media and my irregular newsletter.'
excerpt: 'I’m available for hire: <a href="mailto:contact@minutestomidnight.co.uk">reach out via email</a> and we’ll take it from there. If you need bass tracks or production, it’s possible to use <a href="https://soundbetter.com/profiles/206552-minutes-to-midnight">SoundBetter</a>, a safe and secure platform to hire freelance musicians.'
permalink: '/contact/'
---
## Get in touch

While [I'm not](/blog/escape-from-social-media/) on mainstream social media, it’s possible to reach out on the following platforms: {% for item in site.data.nav-social -%}[{{ item.name }}]({{ item.link }} "{{ item.name }}"){%- unless forloop.last -%}, {% endunless %}{%- if forloop.last -%}.{% endif %}{% endfor %}

## Blog updates

Notifications are available through [RSS feed](/feed.xml), [Mastodon](https://indieweb.social/@m2m) or [Telegram channel](https://t.me/M2Mupdates).

## Newsletter

I only send one when I actually have updates to share, mostly about releases or facts from the audio, game and web industries. You can reply directly and start a conversation: I always respond. Check the archive of [previous newsletters](https://us17.campaign-archive.com/home/?u=dd893fb89a7ad82c176b2527b&id=d54c366fbf).

{% include pattern-newsletter-sub.html %}