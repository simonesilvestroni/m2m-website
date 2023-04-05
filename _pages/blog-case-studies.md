---
layout: page
title: 'Case studies'
date: '2023-04-05 09:48:34'
last_modified_at: '2023-04-05 09:48:36'
description: 'Posts containing deeper analysis on projects such as: sound design, original music releases and music production.'
permalink: '/blog/case-studies/'
---
{%- assign caseStudies = site.posts | where_exp:'post','post.tags contains "case study"' | sort: date | reverse -%}
<ul>
{%- for post in caseStudies %}
  <li>
    <a class="u-url" title="Read the post ‘{{ post.title }}’" href="{{ post.url }}">{{ post.title }}</a><br>
    <small><time class="dt-published dim" datetime="{{ post.date | date_to_xmlschema }}" itemprop="dateCreated">{{ post.date | date: "%-d %B %Y" }}</time></small>
  </li>
  <hr>
{% endfor %}
</ul>