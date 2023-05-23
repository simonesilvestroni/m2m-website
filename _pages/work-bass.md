---
layout: page
title: 'Bass tracks'
date: '2023-05-23 18:06:13'
last_modified_at: '2023-05-23 18:06:18'
description: 'I deliver solid bass tracks that stand out in the mix.'
permalink: '/work/bass/'
---
{% assign caseStudies = site.posts | where_exp:'post','post.tags contains "bass" and post.tags contains "case study"' -%}
{% include pattern-work-filter.html %}
{% include pattern-casestudy.html %}