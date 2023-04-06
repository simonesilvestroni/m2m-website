---
layout: page
title: 'Endorsements'
date: '2023-04-05 11:12:28'
last_modified_at: '2023-04-05 11:12:32'
description: 'A selection of endorsements received while working in different fields of the audio industry.'
permalink: '/work/endorsements/'
---
{% for item in site.endorsements -%}
<blockquote>
  <p>
    {{ item.quote }}
    <cite><a href="{{ item.url }}">{{ item.name }}</a> — {{ item.role }}</cite>
  </p>
</blockquote>
{% endfor %}

{: .notice }
[More on LinkedIn](https://www.linkedin.com/in/simonesilvestroni/)