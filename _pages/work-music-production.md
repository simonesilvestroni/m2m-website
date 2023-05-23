---
layout: page
title: 'Music production'
date: '2023-03-02 11:38:04'
last_modified_at: '2023-05-19 23:41:44'
description: 'With my roots as a bass player and a composer, I can establish a privileged connection with other artists, delivering a solid, balanced and characterful mix and master.'
permalink: '/work/music-production/'
---
{% assign caseStudies = site.posts | where_exp:'post','post.tags contains "music production" and post.tags contains "case study"' -%}
{% include pattern-work-filter.html %}
{% include pattern-casestudy.html %}