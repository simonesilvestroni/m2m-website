---
layout: page
title: Original music productions
date: '2022-04-07'
last_modified_at: '2022-04-07 10:26:43'
description: ''
excerpt: 'Storytelling with music was always a huge magnet as a young listener, hence why the concept album is my favorite medium as a composer.'
permalink: '/music/'
---
{%- assign originalmusic = site.music | where: "type", "music" | reverse -%}
<section class="m2m-entry my-5 pb-3">
  <div class="h-feed">
  <h2 class="p-name h1 fs-1 text-center text-uppercase m2m-text-rotate my-5" id="original-music">Discography</h2>
    <div class="card-group pb-3">
      <div class="row row-cols-1 row-cols-sm-2 g-4">
      {%- for casestudy in originalmusic %}
      {% include card-casestudy.html %}
      {% endfor -%}
      </div>
    </div>  
  </div>
</section>

<div class="text-center">
  <a class="m2m-transition-opacity-03s" href="https://music.minutestomidnight.co.uk" title="Follow my music on Bandcamp">
    <img src="/assets/images/follow-bandcamp.png" width="570" height="100" alt="Follow my music on Bandcamp">
  </a>
</div>