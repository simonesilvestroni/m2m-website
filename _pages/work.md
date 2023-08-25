---
layout: page
title: 'Work'
date: '2021-11-08 10:51:46'
last_modified_at: '2023-08-25 01:38:07'
tldr: false
description: 'A selection of case studies, highlighting my work in the audio industry, spanning three decades.'
permalink: '/work/'
---
During the 1990s, while acquiring audio skills, I freelanced as a [bass player](/blog/tag/bass/). As a lead game audio designer, I participated to the 2002 GDC in San Jose, where I joined the [Game Audio Guild Network](/work/sound-design/ruff-trigger-playstation2-game/#game-developer-conference-and-gang) on the day of its foundation, and witnessed to the launch of Steam by Valve.

*[GDC]: Game Developer Conference

After having specialised in [mix](/blog/tag/mix/) and [master](/blog/tag/master/), I wrote and released songs as [concept albums](/blog/tag/original-music/) focused on a personal narration. At the same time, working as a music producer, I self-published an ebook about [project management in the music industry](/blog/project-management/).

## Collaborators

I've been working with companies, artists and professionals in the UK, Italy, Germany, France, and the United States, including: Gerald Duchene, Dan Ecclestone, Rachel Goodman, Mally Harpaz (Anna Calvi), Ciara Clifford, Callum Gardner, Martin Wykes, renowned master engineer [Ian Shepherd](https://productionadvice.co.uk/about/), and _SoundOnSound_'s editor in chief [Sam Inglis](https://www.soundonsound.com/author/sam-inglis).

Endorsed&nbsp;by [Leland Sklar and others](/work/endorsements/).

## Selected projects

{% assign coProductionProjects = site.posts | where_exp:'post','post.title contains "production" and post.tags contains "work"' -%}
{% assign productionProjects = site.posts | where_exp:'post','post.title contains "Production" and post.tags contains "work"' -%}
{% assign mixProjects = site.posts | where_exp:'post','post.title contains "Mix" and post.tags contains "work"' -%}
{% assign masterProjects = site.posts | where_exp:'post','post.title contains "Master" and post.tags contains "work"' -%}
{% assign workflowProjects = site.posts | where_exp:'post','post.tags contains "workflow" and post.tags contains "work"' -%}
{% assign fullProdProjects = productionProjects | concat: coProductionProjects | concat: mixProjects | concat: masterProjects | concat: workflowProjects | sort: 'date' | reverse %}
{% assign designProjects = site.posts | where_exp:'post','post.tags contains "sound design" and post.tags contains "work"' -%}
{% assign musicProjects = site.posts | where_exp:'post','post.title contains "Release" and post.tags contains "work"' %}
{% assign bassProjects = site.posts | where_exp:'post','post.title contains "Bass" and post.tags contains "work"' -%}

{% include pattern-work-filter.html %}

<hr>

<div class="case-studies h-feed">
	<h3 id="sound-design"><strong>Sound design</strong></h3>
	<p>I enjoy telling stories with sound using field recording, Foley, synthesis, editing, mix and mastering.</p>
	{%- for post in designProjects %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</div>

<hr>

<div class="case-studies h-feed">
	<h3 id="music-production"><strong>Music production</strong></h3>
	<p>As a producer, I help artists deliver a balanced and characterful mix and master.</p>
	{%- for post in fullProdProjects %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</div>

<hr>

<div class="case-studies h-feed">
	<h3 id="original-music"><strong>Original music</strong></h3>
	<p>Evoking a theme through interconnected songs is what makes the concept album my favourite.</p>
	{%- for post in musicProjects %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</div>

<hr>

<div class="case-studies h-feed">
	<h3 id="bass"><strong>Bass</strong></h3>
	<p>I deliver solid bass tracks that stand out in the mix.</p>
	{%- for post in bassProjects %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</div>