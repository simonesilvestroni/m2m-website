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

<table class="table m2m-table-archive table-borderless">
  <thead class="visually-hidden">
    <tr>
      <th>Date</th>
      <th>Newsletter subject</th>
    </tr>
  </thead>
  <tbody>
    {% for post in site.newsletter reversed %}
    <tr>
      <td class="m2m-post-feat_date"><small><mark class="border-radius">{{ post.date | date: "%-d&nbsp;%b&nbsp;’%y" }}</mark>&nbsp;&nbsp;</small></td>
      <td><a href="{{ post.url }}">{{ post.title }}</a></td>
    </tr>
    {% endfor %}
  </tbody>
</table>