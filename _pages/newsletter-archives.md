---
layout: page
title: 'Newsletter archives'
date: '2022-05-08'
last_modified_at: '2022-05-08 21:21:28'
description: 'Aperiodic newsletter. I only send one when there are updates to share, mostly about releases or facts from the audio and game industries.'
excerpt: 'Aperiodic newsletter. I only send one when there are updates to share, mostly about releases or facts from the audio and game industries. Subscribe <a href="/newsletter/#newsletter-subscribe">via RSS or email</a>.
'
permalink: '/newsletter/archives/'
---
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