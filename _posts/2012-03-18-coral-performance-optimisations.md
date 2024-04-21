---
title: 'Coral web performance optimisations'
date: '2012-03-30'
last_modified_at: '2024-01-15 21:26:24'
tags:
  - 'dev project'
  - 'web development'
skillset:
  - 'HTML'
  - 'CSS'
  - 'Web typography'
  - 'Agile'
summary: 'As part of the London-based design firm UI Farm, I worked with Coral to optimise their codebase, solving performance issues reported by many users.'
featimage: true
featimage-name: 'coral-performance-optimisations.jpg'
featimage-alt: Screenshot of a browser window showing Coral’s logo on a multi-colour background
featimage-width: 1024
featimage-height: 622
---
## Objectives

When Coral's project manager approved UI Farm's pitch, we didn’t fully anticipate the gargantuan size of the task. After participating to meetings and stand-ups with Coral’s in-house dev team in their Chiswick HQ, we left our mark by rejuvenating a antiquated codebase, and improving considerably the benchmarks on all counts of web performance.

## Approach

My main responsibilities were threefold: improving a highly convoluted DOM structure, overhauling how typography was handled, and optimise the CSS. The first task I carried out was the removal of the obsolete CUFON typography technique, which not only weighed considerably on page size and loading time on its own, but affected the depth of the DOM in a way I hadn’t seen in a while.

## Results

After a team effort, where my colleagues ironed out performances issues brought by an inefficient Javascript, and a notable waste of resources through a suboptimal use of imagery, the stakeholders were very happy with the new benchmarks. The main pages saw an improvement in loading time and page efficiency close to 80%. Even though this was not my first approach working on web performance, it surely was an outstanding improvement.

## Skills

<ul class="list-inline">
  {% for skill in page.skillset %}
  <li><mark>{{ skill }}</mark></li>
  {% endfor %}
</ul>