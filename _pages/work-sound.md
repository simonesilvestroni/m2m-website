---
layout: page
title: 'Sound Design & Music Production'
date: '2021-11-08 10:51:46'
last_modified_at: '2024-01-09 00:05:33'
description: 'A selection of blog posts where I analyse relevant case studies from my work in the audio industry.'
permalink: /sound-design/
---
{% assign Production = site.posts | where_exp:'post','post.title contains "Production" and post.tags contains "sound project"' -%}
{% assign Mix = site.posts | where_exp:'post','post.title contains "Mix" and post.tags contains "sound project"' -%}
{% assign Master = site.posts | where_exp:'post','post.title contains "Master" and post.tags contains "sound project"' -%}
{% assign Workflow = site.posts | where_exp:'post','post.tags contains "workflow" and post.tags contains "sound project"' -%}
{% assign MusicProduction = Production | concat: Mix | concat: Master | concat: Workflow | sort: 'date' | reverse %}
{% assign SoundDesign = site.posts | where_exp:'post','post.tags contains "sound design" and post.tags contains "sound project"' -%}
{% assign OriginalMusic = site.posts | where_exp:'post','post.title contains "Release" and post.tags contains "sound project"' %}
{% assign Bass = site.posts | where_exp:'post','post.title contains "Bass" and post.tags contains "sound project"' -%}

{% comment %}
<p>Some introductory copy for the case studies, where I introduce an internal navigation by {% for item in site.data.nav-work-sound.menu %} <a href="{{ item.link }}">{{ item.name }}</a>{% unless forloop.last %},{% endunless %}{% endfor %}.</p>
{% endcomment %}

<section class="case-studies h-feed">
	<h2 id="sound-design"><strong>Sound design</strong></h2>
	{%- for post in SoundDesign %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</section>

<section class="case-studies h-feed">
	<h2 id="music-production"><strong>Music production</strong></h2>
	{%- for post in MusicProduction %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</section>

<section class="case-studies h-feed">
	<h2 id="original-music"><strong>Original music</strong></h2>
	{%- for post in OriginalMusic %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</section>

<section class="case-studies h-feed">
	<h2 id="bass"><strong>Bass</strong></h2>
	{%- for post in Bass %}
	{% include pattern-casestudy.html %}
	{% endfor %}
	<p>Here’s a Spotify playlist with a more comprehensive list of songs where I recorded bass tracks:</p>
	<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/1EC2Hm0xSywc5pITPMhuIA?utm_source=generator" width="100%" height="475" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
</section>