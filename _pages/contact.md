---
layout: page
title: Contact
date: '2021-11-08'
last_modified_at: '2022-04-29 16:59:05'
description: 'The best way to get in touch is to reach out via email and we’ll take it from there.'
excerpt: 'The best way to get in touch is to reach out via email and we’ll take it from there.'
permalink: '/contact/'
---
{: .d-inline-block .border .border-3 .rounded .mt-3 .px-3 .py-3 }
✍️ [Send an email →](mailto:hello@minutestomidnight.co.uk)

## Bass tracks

Simone is available through [SoundBetter](https://soundbetter.com/profiles/206552-minutes-to-midnight), a safe and secure platform for freelance musicians.

## Follow us

It’s possible to follow and get in touch on the following platforms:

<ul>
{% for item in site.data.nav-social -%}
<li class="py-1"><a href="{{ item.link }}" title="{{ item.name }}">{{ item.name }}</a></li>
{% endfor %}
</ul>