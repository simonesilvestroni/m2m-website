---
layout: page
title: Follow
date: '2022-04-29'
last_modified_at: '2022-04-29 16:56:42'
description: 'While I’m not on mainstream social media, it’s possible to contact or follow me on several platforms where I have an account.'
excerpt: 'While <a href="/blog/escape-from-social-media/">I’m not</a> on mainstream social media, it’s possible to contact or follow me on several platforms. Subscribe to new posts through the <a href="/rss/" title="Subscribe to my RSS feeds">RSS feeds</a>.'
permalink: '/follow/'
---
{% for item in site.data.nav-social -%}
- [{{ item.name }}]({{ item.link }} "{{ item.name }}")
{% endfor %}

## Chat

Send a message on [Telegram](https://t.me/minutes2midnight) or find me on `irc.libera.chat` as <kbd>m2m</kbd>.