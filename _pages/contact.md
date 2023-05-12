---
layout: page
title: Contact
date: '2021-11-08'
last_modified_at: '2023-05-12 01:31:18'
description: 'Reaching out via email is always the best way to get in touch.'
permalink: '/contact/'
---
The best and quickest way to [get in touch is email](mailto:hello@minutestomidnight.co.uk). If secure communication is needed, use my [PGP public key]({{ site.url }}/assets/files/key.pub) (fingerprint: `DE83 606B EFEF 6726 05DE 3D4B D780 2B3D 11F5 85E5`).

## Elsewhere

I'm active on the following networks:

<ul>
  {% for item in site.data.nav-social.menu -%}
  <li><a href="{{ item.link }}">{{ item.name }}</a></li>
  {% endfor -%}
</ul>

I also have accounts on:

<ul>
  {% for item in site.data.nav-elsewhere.menu -%}
  <li><a href="{{ item.link }}">{{ item.name }}</a></li>
  {% endfor -%}
</ul>

## Work together

<div class="warning">
  <h3>Bass</h3>
  <p>For bass tracks, I’m available on <a href="https://soundbetter.com/profiles/206552-simone-silvestroni">SoundBetter</a>, a safe and secure platform for freelance musicians.</p>
  <h3>Audio projects</h3>
  <p>For music production, sound design, mix or master, <a href="mailto:hello@minutestomidnight.co.uk">reach out via email</a>.</p>
  <h3>Credits and endorsements</h3>
  <ul>
    {% for item in site.data.nav-credits.menu -%}
    <li><a href="{{ item.link }}">{{ item.name }}</a></li>
    {% endfor -%}
  </ul>
</div>