---
title: 'Corporate websites for Elite’s Women Management'
date: '2013-08-29'
last_modified_at: '2023-12-19 15:16:22'
tags:
  - 'dev project'
  - 'web development'
skillset:
  - 'Responsive Design'
  - 'HTML'
  - 'CSS'
  - 'SASS'
  - 'PHP'
  - 'Git'
  - 'Ruby'
  - 'SSH'
  - 'WordPress'
  - 'Project management'
description: 'I worked on Women Management’s multi-site rebrand while co-directing the London-based design and development firm UI Farm.'
featimage: true
featimage-name: 'women-management-elite-corporate-website.jpg'
featimage-alt: image description
featimage-width: 1024
featimage-height: 434
---
## Objectives

WOMEN Management, a global model agency based in New York and now part of [Elite](https://elitemodel.com/){: target="_blank"}{: rel="noopener nofollow"}, wanted to rebrand their existing online presence and create a website to showcase their models. The site required full-screen elegant photogalleries, along with the possibility for agents to create and print PDF portfolios. Finally, it had to work on multiple devices, with the ability to easily manage content.

## Approach

After I negotiated the scope of work with WOMEN Management's CFO and CTO, we envisaged a way to to pull the necessary data from the client's existing model agency management software into the new site. Since WordPress was the <abbr title="Content Management System">CMS</abbr> of choice, this task resulted in a custom admin plugin — not visible to content editors — that communicated with their APIs.

My main focus, beside project management, was on making the responsive framework reliable and fast on all devices, by using progressive enhancement. In charge of deploying three parallel versions of the site (dev, staging, production), I used Ruby's modules to run and optimise both the SASS (CSS) and the continuous deployments via Capistrano and SSH.

## Results

Delivered a performant responsive website with *adaptive content for mobile devices and tablets*, and performance-enhanced features that made it notably fast on all devices.

---

Multi-city navigation, with *custom drop-down sub-menus when needed*, editable in the CMS.

---

Featured top-tier models in an *animated responsive carousel*. The client could choose which model to showcase by flagging them in their agency software.

![Women Management - homepage](/assets/images/elite-womenmanagement-homepage.jpg){: width="1024" height="1640" }
_The homepage, featuring top-tier models in a carousel_

---

Multi-columns layout with latest news and social feeds. In the model pages this changed to the model’s related latest news and social feeds.

![Women Management - model page](/assets/images/elite-womenmanagement-model-page.jpg){: width="1024" height="2056" }
_The model page, featuring their latest news and feeds_

---

Models photo gallery adapted for all devices. Clicking or tapping on a letter, a smooth scrolling animation points to the correct models names. Implemented a responsive *full screen carousel* to go through the model’s portfolio. A tailored feature written in PHP allowed users to *print a PDF version* of the related book.

![Women Management - model photo gallery](/assets/images/elite-womenmanagement-homepage-gallery.jpg){: width="1024" height="770" }
_Model photo gallery_

## Client endorsement

> We felt the need to renew our web presence and reach out to our rapidly growing mobile users, and after very careful consideration we selected UI Farm due to their impressive mobile web design and development credentials.
<cite>Sergio Leccese, CFO</cite>

## Skills

<ul class="list-inline">
  {% for skill in page.skillset %}
  <li><mark>{{ skill }}</mark></li>
  {% endfor %}
</ul>