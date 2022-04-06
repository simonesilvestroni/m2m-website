---
layout: page
title: 'Web Design'
date: '2021-11-08 10:49:23'
last_modified_at: '2022-04-06 23:14:36'
description: "Design and front-end development stems from my past experience with publishing. I strive for accessibility and sustainability through exceptional optimization."
excerpt: '<strong>Designing and coding for the web</strong> is a digital evolution of my past experience with the printed page. My main focus is <em>ethic and sustainable design</em>, obtained through a relentless optimization of web performance. All my recent websites have a Pagespeed rank of <code>100</code> on all grades, including SEO and accessibility.'
permalink: '/work/web-design/'
---
## Main skills

I've been crafting websites from scratch with **`HTML`** and **`CSS`** since the late 1990s, later using **`PHP`** to generate the markup and **`SASS`** for the stylesheets. I adopted **`WordPress`** as my platform of choice since version 1.5, becoming an expert and building custom themes and plug-ins. I make a point of putting performance, **`usability`** and sustainability at the forefront. I'm well versed in graphic tools such as **`Figma`**, **`Sketch`** and DTP software like **`Adobe InDesign`**.

I can set up, run and maintain local and remote web servers in **`Apache`**, **`PHP`**, **`MySQL`** either through a GUI or **`SSH`**. I recently moved to **`JAMstack`** and static site generators with **`headless CMS`**, especially digging **`Jekyll`** with its **`Liquid`** template language and **`Netlify`** for deployment and production builds. I use **`git`** as a versioning system.

<section class="h-feed m2m-entry my-5 pb-3">
{%- assign webdesign = site.webdesign | reverse -%}
{%- assign endorsements = site.endorsements.web -%}
{%- assign cvs = site.resume.web -%}
  <h2 class="p-name h1 fs-1 text-center text-uppercase m2m-text-rotate my-5">Selected case studies</h2>
  <div class="card-group">
    <div class="h-feed row row-cols-1 row-cols-sm-2 g-4">
    {% for casestudy in webdesign %}
    {% include card-casestudy.html %}
    {% endfor %}
    </div>
  </div>
</section>

{% include pattern-button.html link="/contact/" center=true text="Hire me" %}