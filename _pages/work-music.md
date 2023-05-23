---
layout: page
title: 'Original music'
date: '2023-03-02 11:38:04'
last_modified_at: '2023-05-19 23:41:40'
description: 'Evoking a theme through interconnected songs is what makes the concept album my favourite medium.'
permalink: '/work/music/'
---
{% assign caseStudies = site.posts | where_exp:'post','post.tags contains "original music" and post.tags contains "case study"' %}
{% include pattern-work-filter.html %}
{% include pattern-casestudy.html %}