---
layout: page
title: 'About'
date: '2022-01-14'
last_modified_at: '2023-04-07 23:08:18'
description: 'A graduated bassist and producer, I founded Minutes to Midnight to release my music and provide services such as sound design, game audio, bass tracks and production.'
permalink: '/about/'
---
## Quick facts

{: .list-hr }
- First name is pronounced `see-mow-nay`.
- My first live gig was in 1988, followed by an 8-year stint in high-end music studios acquiring audio skills.
- Worked as a professional bass player after graduating at the CPM Music Institute in 1995.
- I lived and worked for 16 years in Milan.
- Participated to the Game Developer Conference in 2002, where I witnessed to the launch of Steam by Valve and joined as a Bronze Member the [Game Audio Guild Network](/work/sound-design/ruff-trigger-playstation2-game/#game-developer-conference-and-gang) on the day of its foundation.
- In the same year, I started my first blog, journaling about working long hours on a console video game while playing *Ico* during pauses.
- Moved to the UK in 2011, first London then Cambridge.
- Graduated at the Berklee College of Music (audio mastering and music production) in 2017.
- After switching from analog to digital two decades ago, I've been working entirely in the box.
- I see video games as the ultimate audio-visual narrative medium.

## Accomplishments

{: .list-hr }
- [Lead game audio designer]({{ site.url }}/work/sound-design/ruff-trigger-playstation2-game/) in the early noughties, with 1 title published.
- Crafted a [parallel career in web development](https://simonesilvestroni.com) out of my love for a previous job in the print industry.
- Released a [personal story as a concept album](/work/music/after-1989/) on the 30<sup><small>th</small></sup> anniversary of the opening of the Berlin Wall.
- Worked as a [sound designer for a cartoon series](/work/sound-design/car-city-cartoon/).
- Built two music studios from the ground-up.
- Apple certified for Logic Pro X, [I transitioned to Pro Tools and later REAPER](/blog/daw-from-logic-to-pro-tools-to-reaper-part-1/).
- I've been working with [UK and US-based artists](/work/music-production/) such as Gerald Duchene, Dan Ecclestone, Rachel Goodman, Ember Rev, Mally Harpaz (Anna Calvi), Ciara Clifford and Callum Gardner.
- As a mixer, I often share projects with renowned master engineer [Ian Shepherd](https://productionadvice.co.uk/about/).
- Constantly looking for a way to complete a task in less and more efficient steps, I wrote an ebook about [project management for musicians]({{ site.url }}/work/project-management/).
- Endorsed by [Leland Sklar and others](/work/endorsements/).

{%- assign mainSkills = site.mainSkills | sort: 'name' %}
{%- assign completeSkills = site.completeSkills %}
{%- assign mainTools = site.mainTools %}
{%- assign completeTools = site.completeTools %}

<div class="notice">
  <h2>Skills</h2>
  <p>{% for item in mainSkills -%}<a href="{{ item.url }}">{{ item.name }}</a>, {% endfor -%}{% for item in completeSkills -%}<span>{{ item.name }}</span>{% unless forloop.last%}, {% endunless %}{% if forloop.last %}.{% endif %}{% endfor -%}</p>
  <h2>Tools proficiency</h2>
  <p>{% for item in mainTools -%}<a href="{{ item.url }}">{{ item.name }}</a>, {% endfor -%}{% for item in completeTools -%}<span>{{ item.name }}</span>{% unless forloop.last%}, {% endunless %}{% if forloop.last %}.{% endif %}{% endfor -%}</p>
  <p>Full list of <a href="/uses/">equipment I use</a>.</p>
</div>

<div class="notice">
  <h2>Updates</h2>
  <ul>
    <li><a href="/now/">What I'm doing now</a></li>
    <li><a href="/feed.xml">RSS</a> for the blog</li>
    <li><a href="/newsletter.xml">RSS</a> for the <a href="/newsletter/">newsletter</a></li>
  </ul>
</div>

## More info

- [Press photos](/press-photos/)
- [A personal manifesto](/manifesto/)
- [Name and logo](/about/name-and-logo/)