---
layout: page
title: Notes
date: '2022-05-12'
last_modified_at: '2022-05-12 12:17:28'
permalink: '/notes/'
excerpt: 'We’re using notes as Indieweb comments and replies sent through webmentions. Inspired by <a href="https://brainbaking.com/notes/">Wouter Groeneveld</a>.'
sitemap: false
robots: 'noindex,follow'
---
<ul class="list-unstyled ps-0 mt-5">
{% for note in site.notes reversed %}
  <li class="py-1"><a href="{{ note.url }}">{{ note.date | date: "%-d %b %Y %T" }}</a></li>
{% endfor %}
</ul>