---
layout: page
title: 'Case studies'
date: '2023-04-05 09:48:34'
last_modified_at: '2023-04-23 16:58:01'
description: 'Part of my blog, these are in-depth analysis of audio projects, including sound design, game audio, bass tracks, original music, music production, mix and master.'
permalink: '/blog/case-studies/'
---
{%- assign caseStudies = site.posts | where_exp:'post','post.tags contains "case study"' | sort: date | reverse -%}
<dl>
{%- for post in caseStudies %}
  <dt>
    <a class="u-url" title="Read the post ‘{{ post.title }}’" href="{{ post.url }}">{{ post.title }}</a>
  </dt>
  <dd>
    <p><time class="dt-published small dim" datetime="{{ post.date | date_to_xmlschema }}" itemprop="dateCreated"><em>{{ post.date | date: "%B %Y" }}</em></time></p>
    <p>{{ post.description }}</p>
  </dd>
  <hr>
{% endfor %}
</dl>