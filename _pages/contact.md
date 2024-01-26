---
layout: page
title: Contact
date: '2021-11-08'
last_modified_at: '2024-01-09 00:05:19'
description: "The best and quickest way to get in touch is <a href='mailto:hello@minutestomidnight.co.uk'>sending an email</a>. If secure communication is needed, use my <a href='/contact/pgp/'>GPG public key</a>."
permalink: /contact/
---
Beside this website, I'm active on [Mastodon](https://sonomu.club/@m2m) and [Bandcamp](https://minutestomidnight.bandcamp.com/follow_me), and have an account on {% for item in site.data.nav-elsewhere.menu -%}{% if forloop.last %} and {% endif %}[{{ item.name }}]({{ item.link }}){% unless forloop.last %}, {% endunless %}{% endfor -%}.

<div class="warning">
	<h2>Work with me?</h2>
	<p>
		Music-wise, I’m <a href="https://soundbetter.com/profiles/206552-simone-silvestroni">available on SoundBetter</a>, a safe and secure platform for freelance musicians. For anything else, <a href="mailto:{{ site.author.email }}">reach out via email</a>.
		<br>
		<a class="cta highlight" href="{{ site.url }}/sound-design/">Recent work as a <strong>sound designer</strong>&nbsp;&rarr;</a>
		<br>
		<a class="cta highlight" href="{{ site.url }}/web-design/">Recent work as a <strong>web designer</strong>&nbsp;&rarr;</a>
	</p>
</div>