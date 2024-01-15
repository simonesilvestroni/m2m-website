---
layout: page
title: Links
date: '2023-04-25'
last_modified_at: '2023-12-25 16:48:05'
description: 'A partial list of websites (in alphabetical order) that I consistently follow, mostly through RSS. In the past I would have called this page ‘Blogroll’.'
permalink: /links/
---
> Pages like this one are how website operators used to promote other websites they like before Google and the SEO industry ruined the World Wide Web.<cite>Matthew Graybosch</cite>

{% assign blogroll = site.data.links-list | sort: 'name' %}
{% for link in blogroll %}
[{{ link.name }}]({{ link.url }})
: {{ link.desc }}
{% endfor %}