---
layout: page
title: Blogroll
date: '2023-04-25'
last_modified_at: '2024-02-24 20:20:52'
description: 'A partial list of websites (in alphabetical order) that I consistently follow through RSS.'
permalink: /blogroll/
---
> Pages like this one are how website operators used to promote other websites they like before Google and the SEO industry ruined the World Wide Web.<cite>Matthew Graybosch</cite>

{% assign blogroll = site.data.blogroll | sort: 'name' %}
{% for link in blogroll %}
[{{ link.name }}]({{ link.url }})
: {{ link.desc }}
{% endfor %}