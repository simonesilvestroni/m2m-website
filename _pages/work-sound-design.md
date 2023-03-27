---
layout: page
title: 'Sound design'
date: '2023-03-02 11:38:04'
last_modified_at: '2023-03-02 11:38:07'
description: 'Sculpting sound from the raw recording material to the polished mastered version is something that always seems magical, like turning a vision into audio.'
permalink: '/work/sound-design/'
---
{%- assign sounddesign = site.posts | where_exp:'post','post.tags contains "sound design" and post.tags contains "case study"' -%}
{%- for project in sounddesign %}
{% include card-project.html %}
{% endfor %}