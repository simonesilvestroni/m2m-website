---
layout: page
title: 'Web Design &amp; Development'
date: '2023-12-05 17:21:46'
last_modified_at: '2024-01-17 16:38:26'
description: "My key skill is turning raw sketched ideas into live interfaces, studying and modifying them through user testing, always keeping a strong eye to usability, performance, and good design balance."
permalink: /web-design/
---
[For more: **comprehensive resume**&nbsp;&rarr;](https://dev.minutestomidnight.co.uk){: .notice-cta }

I’ve been designing and coding accessible and performant websites since 1998, using HTML, CSS, PHP, WordPress, and now Jekyll. I present here a selection of relevant case studies. 

<div class="h-feed">
	{% assign devProjects = site.posts | where_exp:'post','post.tags contains "dev project"' | sort: 'date' | reverse -%}
	{%- for post in devProjects %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</div>