---
layout: page
title: 'Work'
date: '2021-11-08 10:51:46'
last_modified_at: '2023-04-18 13:06:14'
description: 'The facets of my work in the audio field are spread between sound design and game audio, bass tracks, music production and original compositions.'
permalink: '/work/'
---
{%- comment -%}I have no time for DRY now, thanks for checking!{%- endcomment -%}

{%- capture sounddesign_desc -%}
{%- for page in site.pages -%}
  {%- if page.url == '/work/sound-design/' -%}
    {{ page.description }}
  {%- endif -%}
{%- endfor -%}
{%- endcapture -%}

{%- capture musicproduction_desc -%}
{%- for page in site.pages -%}
  {%- if page.url == '/work/music-production/' -%}
    {{ page.description }}
  {%- endif -%}
{%- endfor -%}
{%- endcapture -%}

{%- capture originalmusic_desc -%}
{%- for page in site.pages -%}
  {%- if page.url == '/work/music/' -%}
    {{ page.description }}
  {%- endif -%}
{%- endfor -%}
{%- endcapture -%}

<article class="notice">
  <a class="card-project_link" href="/work/sound-design/" title="Read the case studies about sound design">
    <header>
      <h2>Sound Design</h2>
    </header>
    <div class="card-project">
      <picture class="card-project_picture">
        <source srcset="/assets/images/minutes-to-midnight-studio.webp" type="image/webp">
        <source srcset="/assets/images/minutes-to-midnight-studio.jpg" type="image/jpeg">
        <img src="/assets/images/minutes-to-midnight-studio.jpg" alt="Picture of Minutes to Midnight studio" width="200" height="200">
      </picture>
      <p class="p-summary card-project_description">{{ sounddesign_desc }}<br><br><strong>Read the case studies</strong>&nbsp;→</p>
    </div>
  </a>
</article>

<article class="notice">
  <a class="card-project_link" href="/work/music-production/" title="Read the case studies about music production">
    <header>
      <h2>Music Production</h2>
    </header>
    <div class="card-project">
      <picture class="card-project_picture">
        <source srcset="/assets/images/minutes-to-midnight-in-studio-producing.webp" type="image/webp">
        <source srcset="/assets/images/minutes-to-midnight-in-studio-producing.jpg" type="image/jpeg">
        <img src="/assets/images/minutes-to-midnight-in-studio-producing.jpg" alt="Minutes to Midnight's studio" width="200" height="200">
      </picture>
      <p class="p-summary card-project_description">{{ musicproduction_desc }}<br><br><strong>Read the case studies</strong>&nbsp;→</p>
    </div>
  </a>
</article>

<article class="notice">
  <a class="card-project_link" href="/work/music/" title="Read the case studies about original music">
    <header>
      <h2>Original Music</h2>
    </header>
    <div class="card-project">
      <picture class="card-project_picture">
        <source srcset="/assets/images/minutes-to-midnight-playing-bass.webp" type="image/webp">
        <source srcset="/assets/images/minutes-to-midnight-playing-bass.jpg" type="image/jpeg">
        <img src="/assets/images/minutes-to-midnight-playing-bass.jpg" alt="Minutes to Midnight playing bass in the studio" width="200" height="200">
      </picture>
      <p class="p-summary card-project_description">{{ originalmusic_desc }}<br><br><strong>Read the case studies</strong>&nbsp;→</p>
    </div>
  </a>
</article>

### Books and articles

{: .list-hr }
- In 2018 I wrote the free ebook [_Efficient Productivity for Music Professionals_](/work/project-management/) about project management in the music industry. Based on a real-life album production.
- In 2019 my article [_A Trip to Freedom, From Berlin to Berlin_](/blog/after-1989-full-story/) was published by the Medium magazine "Lessons From History". The story was the basis for my debut album _After 1989_.