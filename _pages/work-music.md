---
layout: page
title: 'Original music'
date: '2023-03-02 11:38:04'
last_modified_at: '2023-03-02 11:38:07'
description: 'The ability of telling stories with music has always been a huge evocative magnet, hence why the concept album is my favorite medium.'
permalink: '/work/music/'
---
{%- assign originalmusic = site.music | reverse -%}
{%- for project in originalmusic %}
{% include card-project.html %}
{% endfor %}