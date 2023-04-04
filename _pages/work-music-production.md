---
layout: page
title: 'Music production'
date: '2023-03-02 11:38:04'
last_modified_at: '2023-03-02 11:38:07'
description: 'As a music producer, I can write and play solid bass parts, handle the process from recording to mastering, with mixing as my preferred stage.'
permalink: '/work/music-production/'
---
{%- assign musicproduction = site.posts | where_exp:'post','post.tags contains "music production" and post.tags contains "case study"' -%}
{%- for project in musicproduction %}
{% include card-project.html %}
{% unless forloop.last %}
{% endunless %}
{% endfor %}

## Playlist with a selection of my bass recordings

{% include pattern-spotify.html id="1EC2Hm0xSywc5pITPMhuIA" type="playlist" height="470" %}

## Playlist with a selection of my productions

{% include pattern-spotify.html id="6yRM57FJ9JKONDAXaLBAdx" type="playlist" height="470" %}

## Playlist with strings production

{% include pattern-spotify.html id="2IqnJFtKWrnI6JPVjkXHif" type="playlist" height="475" %}