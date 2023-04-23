---
layout: page
title: 'Case studies'
date: '2023-04-05 09:48:34'
last_modified_at: '2023-04-23 16:58:01'
description: 'In-depth analysis about projects such as: sound design, game audio, bass tracks, original music releases and music production, including mix and master.'
permalink: '/blog/case-studies/'
---
{%- assign caseStudies = site.posts | where_exp:'post','post.tags contains "case study"' | sort: date | reverse -%}
<ul class="list-hr">
{%- for post in caseStudies %}
  <li>
    <a class="u-url" title="Read the post ‘{{ post.title }}’" href="{{ post.url }}">{{ post.title }}</a><br>
    <time class="dt-published small dim" datetime="{{ post.date | date_to_xmlschema }}" itemprop="dateCreated">{{ post.date | date: "%-d %B %Y" }}</time>
  </li>
{% endfor %}
</ul>