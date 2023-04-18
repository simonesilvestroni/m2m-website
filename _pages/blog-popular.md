---
layout: page
title: 'Popular posts'
date: '2023-04-05 09:48:34'
last_modified_at: '2023-04-05 09:58:21'
description: 'The most popular posts based on private feedback, reactions on Mastodon and what search engines are reporting as search terms.'
permalink: '/blog/popular/'
---
{%- assign caseStudies = site.posts | where_exp:'post','post.tags contains "popular"' | sort: date | reverse -%}
<ul class="list-hr">
{%- for post in caseStudies %}
  <li>
    <a class="u-url" title="Read the post ‘{{ post.title }}’" href="{{ post.url }}"><span class="big">{{ post.title }}</span></a><br>
    <time class="dt-published small dim" datetime="{{ post.date | date_to_xmlschema }}" itemprop="dateCreated">{{ post.date | date: "%-d %B %Y" }}</time>
  </li>
{% endfor %}
</ul>