---
layout: page
title: 'Endorsements'
date: '2023-04-05 11:12:28'
last_modified_at: '2023-08-24 11:43:19'
description: 'A selection of endorsements received while working in different fields of the audio industry.'
permalink: /work/endorsements/
---
{% for item in site.data.endorsements.quotes -%}
<blockquote>
  <p>
    {{ item.quote }}
    <cite><a href="{{ item.url }}"><strong>{{ item.name }}</strong></a> ({{ item.role }})</cite>
  </p>
</blockquote>
{% endfor %}

## More

<ul>
  {% for item in site.data.nav-credits.menu -%}
  <li><a href="{{ item.link }}">{{ item.name }}</a></li>
  {% endfor -%}
</ul>