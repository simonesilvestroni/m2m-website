---
layout: page
title: Notes
date: '2022-05-12'
last_modified_at: '2022-05-12 12:17:28'
permalink: '/notes/'
description: 'I’m using notes as Indieweb comments and replies sent through webmentions.'
sitemap: false
robots: 'noindex,follow'
---
Inspired by [Wouter Groeneveld](https://brainbaking.com/notes/).
<br><br>
{% for note in site.notes reversed %}
  <p><a href="{{ note.url }}">{{ note.date | date: "%-d %b %Y %T" }}</a> in reply to <a href="{{ note.replyto }}">{{ note.replytouser }}</a></p>
{% endfor %}