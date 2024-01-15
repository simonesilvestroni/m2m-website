---
title: 'UniCredit Bank'
date: '2016-09-26'
last_modified_at: '2023-12-27 17:01:01'
tags:
  - 'dev project'
  - 'web development'
skillset:
  - Responsive Design
  - PHP
  - SASS
  - SSH
  - Capistrano
  - Git
  - Usability
  - Project management
description: 'A leading European bank with a network spanning 50 markets impacting millions of people on a daily basis, UniCredit wanted to redesign their online acquisition processes.'
featimage: true
featimage-name: 'website-unicredit-bank.jpg'
featimage-alt: Screenshot of a landing page for UniCredit Bank
featimage-width: 1024
featimage-height: 434
---
## Objectives

The focus of the brief was to overhaul UniCredit’s existing online system for new customers acquisition, both the landing pages and the online process forms. Bound to an out of date desktop-only design, they weren't ready for the vast amount of new prospective customers reaching out the finance giant via mobile devices.

## Approach

After attending meetings at UniCredit’s HQ in Rome, we agreed on following my company’s [new workflow]({{ site.url }}/work/dev/a-modern-workflow-for-the-multi-device-web/) to deliver the project in a timely manner. This choice would later prove to be a watershed moment for the client’s future approach to design. 

I built the new pages on top of PHP modules, using our efficient responsive framework, and adding *progressive enhancement* functionality through Javascript to our designer's vision.

During each stage of development, I directed the usability tests at a lab in London, to ensure an accessible use of the final product, and reliable performance on many different devices and required browsers.

## Results

Once we deployed both landing pages and forms to UniCredit’s production platform, several weeks of A/B testing and benchmark collection lead to impressive conversion numbers, which made the task a stunning success.

## Client endorsement

> UI Farm’s innovative workflow and unique skills has given us a very clear insight into our customers’ behaviour and preferences, which has considerably boosted our account application conversions. Thanks to UI Farm’s approach, we have been able to significantly improve the experience delivered to our customers and prospects, and make changes that have resulted in significant conversion lifts. UI Farm has truly changed our approach to Interaction Design.
> <cite>Gabriele Rosati, [UX and interaction design manager at UniCredit](https://www.linkedin.com/in/rosati/)</cite>

## Skills

<ul class="list-inline">
  {% for skill in page.skillset %}
  <li><mark>{{ skill }}</mark></li>
  {% endfor %}
</ul>