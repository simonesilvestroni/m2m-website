---
layout: page
title: 'Newsletter'
date: '2022-04-29'
last_modified_at: '2022-04-29 01:11:38'
description: 'Aperiodic newsletter, only sent when I have updates to share, mostly about releases or facts from the audio and game industries.'
permalink: '/newsletter/'
---
{% include pattern-newsletter-sub.html %}

## Past issues

<ul>
  {%- for post in site.newsletter reversed %}
  <li>
    <a href="{{ post.url }}" title="Read the post">{{ post.title }}</a><br>
    <small>{{ post.date | date: "%d %b %Y" }}</small>
  </li>
  <hr>
  {% endfor -%}
</ul>