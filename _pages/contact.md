---
layout: page
title: Contacts
date: '2021-11-08 10:31:25'
last_modified_at: '2022-04-06 23:14:48'
description: 'Interested in hiring me for your next project, or just want to connect? Find all the info, including (some) social media and my irregular newsletter.'
excerpt: 'I’m available for hire: reach out via email and we’ll take it from there. If you need bass tracks or production, it’s possible to use <a href="https://soundbetter.com/profiles/206552-minutes-to-midnight">SoundBetter</a>, a safe and secure platform to hire freelance musicians.'
permalink: '/contact/'
---
{: .text-center .fs-4 .my-5 .py-3}
✉️ [Reach out **via email** ↗︎](mailto:contact@minutestomidnight.co.uk)

## Get in touch

While [I'm not](/blog/escape-from-social-media/) on mainstream social media, it’s possible to contact or follow me on the platforms: 

{% for item in site.data.nav-social -%}
- [{{ item.name }}]({{ item.link }} "{{ item.name }}")
{% endfor %}