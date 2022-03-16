---
layout: page
title: 'Web Design'
date: '2021-11-08 10:49:23'
last_modified_at: '2022-01-06 17:27:37'
description: "Designing and coding for the web is a digital evolution of my past experience with the printed page. I strive for accessibility and sustainability through exceptional optimization."
excerpt: '<strong>Designing and coding for the web</strong> is a digital evolution of my past experience with the printed page. My main focus is <em>ethic and sustainable design</em>, obtained through a relentless optimization of web performance. All my recent websites have a Pagespeed rank of <code>100</code> on all grades, including SEO and accessibility.'
permalink: '/work/web-design/'
---
## Main skills

Started crafting websites from scratch with <kbd>HTML</kbd> and <kbd>CSS</kbd> in the late 1990s. I adopted <kbd>WordPress</kbd> as my platform of choice since version `1.5`, becoming an expert and building custom themes with <kbd>SASS</kbd> and plug-ins in <kbd>PHP</kbd>. I'm well versed in graphic tools such as <kbd>Figma</kbd>, <kbd>Sketch</kbd> and DTP software like <kbd>Adobe InDesign</kbd>.

{: .detached}
I recently moved to <kbd>JAMstack</kbd> and static site generators with <kbd>headless CMS</kbd>, especially digging <kbd>Jekyll</kbd> with its <kbd>Liquid</kbd> template language and <kbd>Netlify</kbd>.

{: .detached}
I can build, run and maintain local and remote web servers in <kbd>Apache</kbd>, <kbd>PHP</kbd>, <kbd>MySQL</kbd> either through a GUI or <kbd>SSH</kbd>. All my work is done using <kbd>git</kbd> as a versioning system. 

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

## Brief resume

{%- for cv in cvs %}
  - **{{ cv.year }}**: {{ cv.description }}
{%- endfor -%}

More details on <a href="https://www.linkedin.com/in/minutes2mid/" target="_blank">LinkedIn</a>.

## Courses &amp; memberships

<ul class="list-group list-group-flush ps-0">
  {%- for cert in site.certifications.web %}
  <li class="list-group-item my-0 ps-0 pb-3"><span class="pe-1">🏛</span> {{ cert.name }}.</li>
  {%- endfor -%}
</ul>

## Publications

<span class="pe-1">📒</span> [_How we work: a modern workflow for the multi-device web_](https://medium.com/ui-farm/how-we-work-a-modern-workflow-for-the-multi-device-web-4e0dcb081b5b), technical review by Kara McCain.

## Reviews

{%- for endorsement in endorsements %}

> {{ endorsement.quote }}
> <cite>&mdash; {{ endorsement.name }}, [{{ endorsement.role }}]({{ endorsement.url }})</cite>

{%- endfor -%}

{% include pattern-button.html link="/contact/" center=true text="Hire me" %}