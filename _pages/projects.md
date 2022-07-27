---
layout: page
title: 'Projects'
date: '2021-11-08'
last_modified_at: '2022-04-13 15:37:13'
description: 'Alternating jobs between sound and web design, I’ve worked on many projects since the 1990s. A few highlights of the more representative.'
excerpt: 'Alternating jobs between sound and web design, I’ve worked on many projects since the 1990s. A few highlights of the more representative.'
permalink: '/projects/'
---
{: .display-5 }
## Sound design

{%- assign production = site.sounddesign | where: "subtype", "production" | reverse -%}
{%- assign gameaudio = site.sounddesign | where: "subtype", "game audio" | reverse -%}
{%- assign audioediting = site.sounddesign | where: "subtype", "audio editing" | reverse -%}
{%- assign sounddesign = production | concat: gameaudio | concat: audioediting -%}
  
{%- for project in sounddesign %}
{% include card-project.html %}
{% endfor %}

{: .display-5 }
## Web design

{%- assign webdesign = site.webdesign | reverse -%}

{%- for project in webdesign %}
{% include card-project.html %}
{% endfor %}

{: .display-5 }
## Publications

{% assign ebook = site.pages | where: "permalink", "/projects/project-management/" %}
{% assign pubs = site.pubs %}
{% assign publications = ebook | concat:pubs %}
{% for project in publications %}
{% include card-project.html %}
{% endfor %}

{: .display-5 }
## Spotify playlists

{: .mb-4 }
If Spotify is your jam, here's a couple of playlists. The first features 35 songs where I played the bass:

{% include pattern-spotify.html id="1EC2Hm0xSywc5pITPMhuIA" type="playlist" height="230" margin="mt-3" %}

{: .my-4 }
The second playlist is made of 45 songs produced by me:

{% include pattern-spotify.html id="6yRM57FJ9JKONDAXaLBAdx" type="playlist" height="230" margin="mt-3" %}

{: .text-center .fs-4 .my-5 .py-5 }
✍️ [Reach out to **hire me** →](/contact/)