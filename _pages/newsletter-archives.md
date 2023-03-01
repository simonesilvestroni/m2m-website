---
layout: page
title: 'Newsletter archives'
date: '2022-05-08'
last_modified_at: '2022-05-08 21:21:28'
description: 'Aperiodic newsletter. I only send one when there are updates to share, mostly about releases or facts from the audio and game industries.'
permalink: '/newsletter/archives/'
---
Subscribe [via RSS or email](/newsletter/#newsletter-subscribe).

<table class="table">
  <thead>
    <tr>
      <th>Subject</th>
      <th>Date</th>
    </tr>
  </thead>
  <tbody>
    {% for post in site.newsletter reversed %}
    <tr>
      <td><a class="ps-1" href="{{ post.url }}">{{ post.title }}</a></td>
      <td><span class="initialism">{{ post.date | date: "%-d %b %Y" }}</span></td>
    </tr>
    {% endfor %}
  </tbody>
</table>
{% include pattern-newsletter-sub.html %}