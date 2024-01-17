---
layout: page
title: 'Web Design & Development'
date: '2023-12-05 17:21:46'
last_modified_at: '2024-01-17 16:38:26'
description: "My key skill is turning raw sketched ideas into live interfaces, studying and modifying them through user testing, always keeping a strong eye to accessibility, performance, and good design balance."
permalink: /web-design/
---
I present here a selection of relevant case studies. For more, check my comprehensive&nbsp;[**resume**&nbsp;&rarr;](https://web.minutestomidnight.co.uk){: .cta .cta-nospace .highlight }

<div class="case-studies h-feed">
	{% assign devProjects = site.posts | where_exp:'post','post.tags contains "dev project"' | sort: 'date' | reverse -%}
	{%- for post in devProjects %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</div>