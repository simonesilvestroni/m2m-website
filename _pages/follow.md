---
layout: page
title: Follow
date: '2022-04-29'
last_modified_at: '2022-05-31 17:38:30'
description: 'While I’m not on mainstream social media, it’s possible to contact or follow me on several platforms where I have an account.'
excerpt: 'While <a href="/blog/escape-from-social-media/">I’m not</a> on mainstream social media, it’s possible to get in touch or follow me on several platforms. Subscribe to new posts through the <a href="/rss/" title="Subscribe to my RSS feeds">RSS feeds</a>.'
permalink: '/follow/'
---
{% for item in site.data.nav-social -%}
- [{{ item.name }}]({{ item.link }} "{{ item.name }}")
{% endfor %}