---
layout: page
title: 'Newsletter'
date: '2022-04-29'
last_modified_at: '2023-04-06 15:21:05'
description: 'Aperiodic newsletter, only sent when I have updates to share, mostly about releases or facts from the audio and game industries.'
permalink: '/newsletter/'
---
{% include pattern-newsletter-sub.html %}

## Past issues

<ul class="list-hr">
  {%- for post in site.newsletter reversed %}
  <li>
    <a href="{{ post.url }}" title="Read the post">{{ post.title }}</a><br>
    <span class="small">{{ post.date | date: "%d %b %Y" }}</span>
  </li>
  {% endfor -%}
</ul>