---
layout: page
title: 'Sound design'
date: '2023-03-02 11:38:04'
last_modified_at: '2023-04-18 13:06:10'
description: 'By capturing and manipulating audio from the raw recording to the final version, I turn a vision into sound using field recording, Foley, synthesis, editing, mix and mastering.'
permalink: '/work/sound-design/'
---
{%- assign sounddesign = site.posts | where_exp:'post','post.tags contains "sound design" and post.tags contains "case study"' -%}
{%- for project in sounddesign %}
{% include card-project.html %}
{% endfor -%}