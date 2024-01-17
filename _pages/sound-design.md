---
layout: page
title: 'Sound Design & Music Production'
date: '2021-11-08 10:51:46'
last_modified_at: '2024-01-17 18:46:09'
description: 'A professional bass player and composer by trade, a keen eye for details helped me becoming a game audio sound designer, and specialising as a mix and master engineer.'
permalink: /sound-design/
---
{% assign Production = site.posts | where_exp:'post','post.title contains "Production" and post.tags contains "sound project"' -%}
{% assign Mix = site.posts | where_exp:'post','post.title contains "Mix" and post.tags contains "sound project"' -%}
{% assign Master = site.posts | where_exp:'post','post.title contains "Master" and post.tags contains "sound project"' -%}
{% assign Strings = site.posts | where_exp:'post','post.title contains "Strings production" and post.tags contains "sound project"' -%}
{% assign Workflow = site.posts | where_exp:'post','post.tags contains "workflow" and post.tags contains "sound project"' -%}
{% assign MusicProduction = Production | concat: Mix | concat: Master | concat: Strings | concat: Workflow | sort: 'date' | reverse %}
{% assign SoundDesign = site.posts | where_exp:'post','post.tags contains "sound design" and post.tags contains "sound project"' -%}
{% assign OriginalMusic = site.posts | where_exp:'post','post.title contains "Release" and post.tags contains "sound project"' %}
{% assign Bass = site.posts | where_exp:'post','post.title contains "Bass" and post.tags contains "sound project"' -%}

For more, check my comprehensive&nbsp;[**resume**&nbsp;&rarr;](https://sound.minutestomidnight.co.uk){: .cta .cta-nospace .highlight }

---

{: .sound-design-categories }
Browse a selection of relevant case studies by:<br>{% for item in site.data.nav-work-sound.menu %}[{{ item.name }}]({{ item.link }}) {% unless forloop.last %} {% endunless %}{% endfor %}

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