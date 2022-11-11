---
layout: page
title: Notes
date: '2022-05-12'
last_modified_at: '2022-05-12 12:17:28'
permalink: '/notes/'
excerpt: 'While I have unsuccessfully tried implementing notes in the past, I’m now using them as Indieweb comments and replies sent through webmentions. Inspired by <a href="https://brainbaking.com/notes/">Wouter Groeneveld</a>.'
sitemap: false
robots: 'noindex,follow'
---
<ul>
{% for note in site.notes reversed %}
  <li class="py-1">📒 <a href="{{ note.url }}">{{ note.date | date: "%-d %b %Y %T" }}</a></li>
{% endfor %}
</ul>