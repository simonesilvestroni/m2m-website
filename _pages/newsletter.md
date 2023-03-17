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

<table class="table">
  <thead>
    <tr>
      <th>Newsletter subject</th>
      <th>Date</th>
    </tr>
  </thead>
  <tbody>
    {% for post in site.newsletter reversed %}
    <tr>
      <td><a href="{{ post.url }}">{{ post.title }}</a></td>
      <td><span class="initialism">{{ post.date | date: "%-d %b %Y" }}</span></td>
    </tr>
    {% endfor %}
  </tbody>
</table>