---
layout: page
title: 'More links'
date: '2022-09-07'
last_modified_at: '2022-09-07 11:25:32'
description: 'Secondary navigation of archives, in-depth pages and more ways to connect.'
excerpt: false
permalink: '/more-links/'
---
<ul>
  {% for item in site.data.nav-secondary -%}
  <li class="py-2">
    <span>{{ item.icon }} </span><a class="pe-2{% if page.url == item.link %} m2m-current{% endif %}" href="{{ item.link }}" title="Go to: {{ item.name }}"><strong>{{ item.name }}</strong></a>
  </li>
  {% endfor -%}
</ul>