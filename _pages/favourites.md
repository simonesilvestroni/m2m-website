---
layout: page
title: Favourite posts
date: '2023-11-24 20:13:30'
last_modified_at: '2023-11-24 20:13:33'
description: 'A page collecting some posts that I like, or that generated private commants, or got some traction on the internet.'
tldr: false
permalink: /blog/favourites/
---
{% assign favposts = site.posts | where_exp:'post','post.tags contains "featured"' -%}
<ul class="h-feed">
  {%- for post in favposts %}
  {%- if post -%}{% assign date = post.date %}
  {%- elsif page -%}{% assign date = page.date %}
  {%- endif -%}
  <li>
    <time class="dim small" datetime="{{ post.date | date_to_xmlschema }}" itemprop="dateCreated">{{ post.date | date: "%-d&nbsp;%b&nbsp;%Y" }}</time>
    <a href="{{ post.url }}" title="{{ post.description }}">{{ post.title }}</a>
  </li>
  {% endfor %}
</ul>