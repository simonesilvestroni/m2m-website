---
layout: page
title: 'Work'
date: '2021-11-08 10:51:46'
last_modified_at: '2022-11-30 10:50:29'
description: 'Highlights of representative work produced by Minutes to Midnight.'
excerpt: 'Highlights of representative work produced by Minutes to Midnight.'
permalink: '/work/'
toc: true
---
{%- assign originalmusic = site.music | reverse -%}
{%- assign musicproduction = site.musicproduction | reverse -%}
{%- assign gameaudio = site.gameaudio | reverse -%}
{%- assign sounddesign = site.sounddesign | reverse -%}

{: .pb-3 }
## Original music

{%- for project in originalmusic %}
{% include card-project.html %}
{% endfor %}

{: .pb-3 }
## Music production
  
{%- for project in musicproduction %}
{% include card-project.html %}
{% endfor %}

{: .pb-3 }
## Game audio

{%- for project in gameaudio %}
{% include card-project.html %}
{% endfor %}

{: .pb-3 }
## Sound design

{%- for project in sounddesign %}
{% include card-project.html %}
{% endfor %}

{: .pb-3 }
## Articles

{% assign ebook = site.pages | where: "permalink", "/work/project-management/" %}
{% assign pubs = site.pubs %}
{% assign publications = ebook | concat:pubs %}
{% for project in publications %}
{% include card-project.html %}
{% endfor %}

## Spotify playlists

{% include pattern-spotify.html id="1EC2Hm0xSywc5pITPMhuIA" type="playlist" height="290" margin="mt-3" %}

{% include pattern-spotify.html id="6yRM57FJ9JKONDAXaLBAdx" type="playlist" height="290" margin="mt-3" %}

{% include pattern-spotify.html id="2IqnJFtKWrnI6JPVjkXHif" type="playlist" height="290" margin="mt-3" %}