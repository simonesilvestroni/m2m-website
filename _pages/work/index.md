---
layout: page
title: 'Work'
date: '2021-11-08 10:30:38'
last_modified_at: '2022-02-10 18:24:31'
description: "As a cross-disciplinary polymath, I’ve been juggling between design and audio since the early 1990s. Here is some of my work as a sound and web designer."
excerpt: 'In 1995, while interning as an editor, I graduated as a <strong>bass player</strong>. Switched a few years later from the publishing industry to <strong>web design</strong>. After spending the following decades working as a <strong>game audio designer</strong> and a front-end developer between Italy and the UK, I gained a diploma at Berklee, specializing in music production, <strong>mixing</strong> above all.'
work:
  - title: Sound design
    desc: '<strong>Recording and sculpting sound</strong> has always been a massive creative push. Collaborating as a bassist or producer, game audio or editing and restoration are a constant source of excitement.'
    cta: Sound design works
    href: /work/sound-design/
  - title: Web design
    desc: '<strong>Designing and coding for the web</strong> is a digital evolution of my past experience with the printed page. I strive for accessibility and sustainability through exceptional optimization.'
    cta: Web design works
    href: /work/web-design/
  - title: Original music
    desc: '<strong>I love telling stories with music</strong>. This is why, beyond a stint as a game audio composer, my original productions mostly focus on the concept album as a format.'
    cta: Published original music
    href: /work/original-music-productions/
permalink: '/work/'
---
<section class="h-feed m2m-entry my-5 pb-3">
  <div class="card-group pb-3">
    <div class="row row-cols-1 row-cols-md-2 gx-4 gy-4">
      {% for section in page.work %}
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

## Equipment

Here is a detailed list of <a href="/uses/">everything I use</a>, software and hardware.

## Endorsements

A representative selection of the [**27 recommendations** I received on LinkedIn](https://www.linkedin.com/in/minutes2mid/).

> What’s always impressed me about Simone is his attention to detail, which he demonstrates in every area of his work. Not only is he a prolific producer and bassist, but he easily comprehends and executes on the most abstract concepts across tech, audio, marketing, branding, and visual arts. When you work with Simone, everything is down, documented, and organised, which makes it very easy to work with him directly or in the context of a team.
> <cite>— Christopher Carvalho, [Unlock Your Sound](https://unlockyoursound.com/){:target="_blank" rel="noopener"}</cite>

> My experience of working with Simone has always been very positive and enjoyable. Simone always takes a pragmatic and investigative approach to finding solutions for our needs and has very friendly and helpful attitude. His attention to detail makes him always deliver perfect coded products, saving us time and concerns on the web projects he develops.
> <cite>— Gabriele Rosati, [UX and interaction design manager at UniCredit](https://www.linkedin.com/in/rosati/){:target="_blank" rel="noopener"}</cite>

{% include pattern-button.html link="/contact/" center=true text="Hire me" %}