---
layout: page
title: Follow
date: '2022-04-29'
last_modified_at: '2022-04-29 16:56:42'
description: 'While I’m not on mainstream social media, it’s possible to contact or follow me on several platforms where I have an account.'
excerpt: 'While <a href="/blog/escape-from-social-media/">I’m not</a> on mainstream social media, it’s possible to contact or follow me on several platforms where I have an account. Follow new blog posts through the <a href="/feed.xml" title="Subscribe to my RSS feed">RSS feed</a>.'
permalink: '/follow/'
---
{% for item in site.data.nav-social -%}
- [{{ item.name }}]({{ item.link }} "{{ item.name }}")
{% endfor %}