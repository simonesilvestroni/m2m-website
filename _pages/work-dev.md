---
layout: page
title: 'Web Design & Development'
date: '2023-12-05 17:21:46'
last_modified_at: '2024-01-09 00:05:38'
description: 'A selection of blog posts where I analyse relevant case studies from my work in the web design industry.'
permalink: /web-design/
---
<div class="case-studies h-feed">
	{% assign devProjects = site.posts | where_exp:'post','post.tags contains "dev project"' | sort: 'date' | reverse -%}
	{%- for post in devProjects %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</div>