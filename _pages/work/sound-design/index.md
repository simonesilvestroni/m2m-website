---
layout: page
title: 'Sound Design'
date: '2021-11-08 10:49:23'
last_modified_at: '2022-04-06 23:14:29'
description: "Highlighting my work as a sound designer, bassist, music producer, game audio specialist and audio editor."
excerpt: "<strong>Sculpting sound</strong> has always been a massive creative push. Whether creating the foundation with the bass, realizing an artist’s vision by producing and mixing, recording in the field for game audio and up to editing and restoration, sound design is a constant source of excitement."
permalink: '/work/sound-design/'
---
## Main skills

Besides being a professional **`bassist`**, I'm an expert in **`music production`**, especially **`mixing`** and **`mastering`**.  After a long experience with **`Logic Pro`**, **`Pro Tools`** and **`Sound Forge`**, the tools I'm currently digging the most are **`REAPER`** and **`iZotope RX`**. After deciding to go back to **`game audio`**, I'm currently deeply involved in learning Audiokinetic's **`Wwise`** and **`FMOD`**.

<section class="m2m-entry my-5 pb-1">
{%- assign production = site.sounddesign | where: "subtype", "production" | reverse -%}
{%- assign gameaudio = site.sounddesign | where: "subtype", "game audio" | reverse -%}
{%- assign audioediting = site.sounddesign | where: "subtype", "audio editing" | reverse -%}
  <div class="h-feed">
  <h2 class="p-name h1 fs-1 text-center text-uppercase m2m-text-rotate mt-5">Bass & Production: case studies</h2>
    <div class="card-group mt-5">
      <div class="row row-cols-1 row-cols-sm-2 g-4">
        {%- for casestudy in production %}
        {% include card-casestudy.html %}
        {% endfor %}
      </div>
    </div>
  </div>
  <h2 class="h1 fs-2 text-center m2m-text-rotate mt-5">Bass & production playlists</h2>
  <div class="row row-cols-1 row-cols-sm-2 g-4">
    <div class="col">
      {% include pattern-spotify.html id="1EC2Hm0xSywc5pITPMhuIA" type="playlist" height="380" margin="mt-3" %}
    </div>
    <div class="col">
      {% include pattern-spotify.html id="6yRM57FJ9JKONDAXaLBAdx" type="playlist" height="380" margin="mt-3" %}
    </div>
  </div>
</section>

<div class="text-center mb-5 pb-5">
  <a class="m2m-transition-opacity-03s" href="https://www.discogs.com/artist/1206278-Simone-Silvestroni" title="Find my credits on Discogs">
    <img src="/assets/images/follow-discogs.png" width="570" height="100" alt="Find my credits on Discogs">
  </a>
</div>

<section class="m2m-entry my-5 pb-3">
  <div class="h-feed">
  <h2 class="p-name h1 fs-1 text-center text-uppercase m2m-text-rotate my-5">Game Audio: case studies</h2>  
    <div class="card-group mt-5 pb-3">
      <div class="row row-cols-1 row-cols-sm-2 g-4">
      {%- for casestudy in gameaudio %}
      {% include card-casestudy.html %}
      {% endfor -%}
      </div>
    </div>    
  </div>
</section>
<section class="m2m-entry my-5 pb-3">
  <div class="h-feed">
  <h2 class="p-name h1 fs-1 text-center text-uppercase m2m-text-rotate my-5">Audio Editing: case studies</h2>
    <div class="card-group pb-3">
      <div class="row row-cols-1 row-cols-sm-2 g-4">
      {%- for casestudy in audioediting %}
      {% include card-casestudy.html %}
      {% endfor -%}
      </div>
    </div>  
  </div>
</section>

{% include pattern-button.html link="/contact/" center=true text="Hire me" %}