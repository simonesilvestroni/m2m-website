---
layout: page
title: 'Original music'
date: '2023-03-02 11:38:04'
last_modified_at: '2023-03-02 11:38:07'
description: 'Storytelling with music is a magnet that always captivated me. Evoking a theme through songs is what makes the concept album my favourite medium.'
permalink: '/work/music/'
---
{%- assign originalmusic = site.posts | where_exp:'post','post.tags contains "original music"' -%}
{%- for project in originalmusic %}
{% include card-project.html %}
<hr>
{% endfor %}