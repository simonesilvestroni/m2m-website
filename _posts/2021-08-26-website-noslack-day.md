---
title: 'Website for No Slack Day'
date: '2021-08-26'
last_modified_at: '2023-12-27 17:00:24'
tags:
  - 'dev project'
  - 'web development'
skillset:
  - Javascript
  - Jekyll
  - SASS
  - purgeCSS
  - Git
  - GitHub Pages
  - Node
  - Bootstrap 5
summary: 'Website for the yearly initiative to remind people of how Slack can also be distracting and counter-productive.'
featimage: true
featimage-name: 'website-no-slack-day.jpg'
featimage-alt: Screenshot of the landing page for the “No Slack Day” initiative
featimage-width: 1024
featimage-height: 622
---
## Skills

<ul class="list-inline">
  {% for skill in page.skillset %}
  <li><mark>{{ skill }}</mark></li>
  {% endfor %}
</ul>

## Objectives

An interesting initiative, _No Slack Day_ was a yearly reminder of how a communication tool can also be distracting and counter-productive. A landing page was required to communicate the scope of the initiative and share it with the world. Since the core idea was connected with the concept of interruptions by proxy of instant messages, a very fast loading time was critical.

## Approach

Built using Jekyll, unobtrusive Javascript, and optimised imagery, I adopted Bootstrap as a foundation. Even though I since moved away from utility-class CSS frameworks, it helped introducing me to a third-party established system that I'd never used before.

## Results

I achieved a blazing fast performance in a modern-looking landing page.

| Page weight | Pagespeed score | Loading time |
| ----------- | --------------- | ------------ |
| 95 KB       | 100             | 0.5 seconds  |

[**Visit an archived version**&nbsp;&rarr;](https://archive.is/20210809134101/https://www.noslackday.org/){: .cta }