---
layout: page
title: 'Sound Design'
date: '2021-11-08 10:49:23'
last_modified_at: '2022-02-12 18:59:39'
description: "Highlighting my work as a sound designer, bassist, music producer and composer, game audio specialist and audio editor."
excerpt: "<strong>Sculpting sound</strong> has always been a massive creative push. Whether creating the foundation with the bass, realizing an artist’s vision by producing and mixing, recording in the field for game audio and up to editing and restoration, sound design is a constant source of excitement."
permalink: '/work/sound-design/'
---
## Main skills

Besides being a professional <kbd>bassist</kbd>, I'm an expert in music <kbd>production</kbd>, especially <kbd>mixing</kbd> and <kbd>mastering</kbd>.  After a long experience with <kbd>Logic Pro</kbd>, <kbd>Pro Tools</kbd> and <kbd>Sound Forge</kbd>, the tools I'm currently digging the most are <kbd>REAPER</kbd> and <kbd>iZotope RX</kbd>. I also write and release original music.

After deciding to go back to <kbd>game audio</kbd>, I'm deeply involved in learning Audiokinetic's <kbd>Wwise</kbd> and <kbd>FMOD</kbd>.

<section class="m2m-entry my-5 pb-1">
{%- assign production = site.sounddesign | where: "subtype", "production" | reverse -%}
{%- assign gameaudio = site.sounddesign | where: "subtype", "game audio" | reverse -%}
{%- assign audioediting = site.sounddesign | where: "subtype", "audio editing" | reverse -%}
{%- assign originalmusic = site.sounddesign | where: "subtype", "original music" | reverse -%}
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
<section class="m2m-entry my-5 pb-3">
  <div class="h-feed">
  <h2 class="p-name h1 fs-1 text-center text-uppercase m2m-text-rotate my-5">Original music: case studies</h2>
    <div class="card-group pb-3">
      <div class="row row-cols-1 row-cols-sm-2 g-4">
      {%- for casestudy in originalmusic %}
      {% include card-casestudy.html %}
      {% endfor -%}
      </div>
    </div>  
  </div>
</section>

## Certifications, courses and memberships

<ul class="list-group list-group-flush ps-0">
  {%- for cert in site.certifications.sound %}
  <li class="list-group-item my-0 ps-0 pb-3">
    <span class="pe-1">🏛</span> <a href="{{ cert.href }}">{{ cert.name }}</a> {{ cert.desc }}.
  </li>
  {% endfor -%}
</ul>

## Publications

<ul class="list-group list-group-flush ps-0">
  <li class="list-group-item my-0 ps-0 pb-3"><span class="pe-1">📒</span> <em>Efficient Productivity for Music Professionals</em> (2020). Download the <a href="/work/project-management/">free ebook</a>.</li>
  <li class="list-group-item my-0 ps-0 pb-3"><span class="pe-1">📒</span> <em>A Trip to Freedom, from Berlin to Berlin</em>, published by <a href="https://medium.com/lessons-from-history/a-trip-to-freedom-from-berlin-to-berlin-e9725231eb2e">Lessons from History</a>, 2019.</li>
  <li class="list-group-item my-0 ps-0 pb-3"><span class="pe-1">📒</span> <em>Producing bass tracks remotely</em>, published by <a href="https://unlockyoursound.com/producing-bass-tracks-remotely/">Unlock Your Sound</a>.</li>
</ul>

{% include pattern-button.html link="/contact/" center=true text="Hire me" %}