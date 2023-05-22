---
layout: page
title: 'Sound design'
date: '2023-03-02 11:38:04'
last_modified_at: '2023-05-19 23:41:35'
description: 'By capturing and manipulating audio from the raw recording to the final version, I turn a vision into sound using field recording, Foley, synthesis, editing, mix and mastering.'
permalink: '/work/sound-design/'
---
{% include pattern-work-filter.html %}
{% assign caseStudies = site.posts | where_exp:'post','post.tags contains "sound design" and post.tags contains "case study"' -%}
{% include pattern-casestudy.html %}