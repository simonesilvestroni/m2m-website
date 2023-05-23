---
layout: page
title: Links
date: '2023-04-25'
last_modified_at: '2023-04-25 23:46:21'
description: 'A partial list of websites and blogs I enjoy reading through RSS feeds.'
tldr: false
permalink: '/links/'
---
The following are websites (in alphabetical order) that I consistently read within a curated platform with zero algorithm. Or, said in a direct way:

> Pages like this one are how website operators used to promote other websites they like before Google and the SEO industry ruined the World Wide Web.<cite>[Matthew Graybosch](https://starbreaker.org/links/)</cite>

{% assign blogroll = site.data.links-list | sort: 'name' %}
{% for link in blogroll %}
[{{ link.name }}]({{ link.url }})
: {{ link.desc }}
{% endfor %}