---
layout: page
title: 'Work'
date: '2021-11-08 10:51:46'
last_modified_at: '2023-05-19 23:41:29'
tldr: false
description: 'A selection of case studies, highlighting my work in the audio industry, spanning three decades.'
permalink: '/work/'
---
{: .p-summary .post-tldr }
I love telling stories with sound. Having both creative and technical skills, I can establish an empathetic connection with artists and programmers alike.

{% assign caseStudies = site.posts | where_exp:'post','post.tags contains "work"' | sort: date | reverse %}
{% include pattern-work-filter.html %}
{% include pattern-casestudy.html %}