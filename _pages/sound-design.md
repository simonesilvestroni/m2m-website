---
layout: page
title: 'Sound Design &amp; Music Production'
date: '2021-11-08 10:51:46'
last_modified_at: '2024-01-20 00:30:43'
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

{: .cta }
[For more: **comprehensive resume**&nbsp;&rarr;](https://sound.minutestomidnight.co.uk){: .notice-cta }

<section>
	<h2>Browse a selection of relevant case studies</h2>
	<ul class="list-hr">
		{%- for item in site.data.nav-work-sound.menu %}
		<li><a href="{{ item.link }}">{{ item.name }}</a></li>
		{%- endfor %}
	</ul>
</section>
<section class="h-feed">
	<h2 id="sound-design">Sound design</h2>
	{%- for post in SoundDesign %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</section>

<section class="h-feed">
	<h2 id="music-production">Music production</h2>
	{%- for post in MusicProduction %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</section>

<section class="h-feed">
	<h2 id="original-music">Original music</h2>
	{%- for post in OriginalMusic %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</section>

<section class="h-feed">
	<h2 id="bass">Bass</h2>
	{%- for post in Bass %}
	{% include pattern-casestudy.html %}
	{% endfor %}
</section>

<p>There's <a href="https://open.spotify.com/playlist/1EC2Hm0xSywc5pITPMhuIA?go=1&sp_cid=487d59ad613576f2112257ebd71a52af&utm_source=embed_player_p&utm_medium=desktop">a Spotify playlist</a> with a more comprehensive list of songs where I recorded bass tracks.</p>