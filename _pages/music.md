---
layout: page
title: Original music productions
date: '2022-04-07'
last_modified_at: '2022-04-13 15:36:48'
description: 'My solo discography. Music storytelling was always a huge magnet as a young listener, hence why the concept album is my favorite medium as a composer.'
excerpt: 'Music storytelling was always a huge magnet as a young listener, hence why the concept album is my favorite medium as a composer.'
permalink: '/music/'
---
{%- assign originalmusic = site.music | where: "type", "music" | reverse -%}
<section class="m2m-entry my-5 pb-3">
  <div class="h-feed">
    {%- for project in originalmusic %}
    {% include card-project.html %}
    {% endfor -%}
  </div>
</section>

{: .text-center .fs-4 }
💿 [My music on **Bandcamp** ↗︎](https://music.minutestomidnight.co.uk)