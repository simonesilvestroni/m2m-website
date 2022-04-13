---
layout: page
title: 'Projects'
date: '2021-11-08 10:30:38'
last_modified_at: '2022-04-06 23:14:43'
description: "As a cross-disciplinary polymath, I’ve been juggling between design and audio since the early 1990s. Here is some of my work as a sound and web designer."
excerpt: 'Started working for the publishing industry in the mid 1990s while graduating as a musician. After learning web design, I alternated jobs between sound designer and front-end developer roles. <a href="/resume/" title="Check out my resume">Check out my resume</a>.'
projects:
  - title: Sound design
    desc: '<strong>Recording and sculpting sound</strong> has always been a massive creative push. Creating a story with sounds, whether as a bassist, producer, game composer or editor is a constant source of excitement.'
    cta: Sound design works
    href: /projects/sound-design/
  - title: Web design
    desc: '<strong>Designing and coding for the web</strong> is a digital evolution of my past experience with the printed page. I strive for accessibility and sustainability through exceptional optimization.'
    cta: Web design works
    href: /projects/web-design/
permalink: '/projects/'
---
<section class="h-feed m2m-entry my-5 pb-3">
  <h2 class="visually-hidden">Case studies</h2>
  <div class="card-group pb-3">
    <div class="row row-cols-1 row-cols-md-2 gx-4 gy-4">
      {% for section in page.projects %}
        <div class="col m2m-transition-opacity-03s">
        <div class="card h-100 pt-2 pb-3 px-3 m2m-transition-opacity-03s">
          <div class="card-body text-center">
            <h2 class="h1 fs-3 text-uppercase mt-0">{{ section.title }}</h2>
            <p class="fs-5 card-text text-start">{{ section.desc }}</p>
          </div>
          <div class="card-footer text-center">
            <a class="stretched-link btn btn-lg btn-m2m btn-m2m-cta text-decoration-none fw-bold" href="{{ section.href }}"><span class="fs-5 initialism"><strong>{{ section.cta }}</strong></span></a>
          </div>
        </div>
      </div>
      {% endfor %}
    </div>
  </div>
</section>

## Endorsements

{%- assign endorsementweb = site.endorsements.web -%}
{%- assign endorsementaudio = site.endorsements.audio -%}

{%- for endorsement in endorsementweb limit:1 %}

> {{ endorsement.quote }}
> <cite>&mdash; {{ endorsement.name }}, [{{ endorsement.role }}]({{ endorsement.url }})</cite>

{%- endfor -%}

{%- for endorsement in endorsementaudio limit:1 %}

> {{ endorsement.quote }}
> <cite>&mdash; {{ endorsement.name }}, [{{ endorsement.role }}]({{ endorsement.url }})</cite>

{%- endfor %}

{% include pattern-button.html link="/contact/" center=true text="Hire me" %}