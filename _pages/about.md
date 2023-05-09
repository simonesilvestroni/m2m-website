---
layout: page
title: 'About'
date: '2022-01-14'
last_modified_at: '2023-05-09 19:19:22'
description: 'A graduated bassist and producer, Minutes to Midnight is the nickname I use to release my music and work on sound design, game audio, bass tracks and production.'
permalink: '/about/'
---
I also crafted a [parallel career in web development](https://simonesilvestroni.com) out of my love for a previous job in the print industry.

{% include pattern-figure.html image="/assets/images/gallery-press/e_in-the-studio.jpg" alt="In the studio (Cambrdige), playing a fretless Fender Jazz bass" caption="In the studio (Cambrdige), playing a fretless Fender Jazz bass" width="1600" height="1066" %}

## Quick facts

{: .list-hr }
- First name is pronounced `see-mow-nay`.
- Spent 8 years during the 1990s acquiring audio skills in music studios, and freelanced as a bass player after graduating at the CPM Music Institute in 1995.
- I lived and worked for 16 years in Milan.
- Participated to the Game Developer Conference in 2002, where I witnessed to the launch of Steam by Valve and joined as a Bronze Member the [Game Audio Guild Network](/work/sound-design/ruff-trigger-playstation2-game/#game-developer-conference-and-gang) on the day of its foundation. At the same time, I started my first blog, journaling about working long hours on a console video game.
- Moved to the UK in 2011.
- Graduated at the Berklee College of Music (audio mastering and music production) in 2017.
- My favourite bass player is [Andy Rourke](http://www.andyrourke.com).
- I see video games as the ultimate audio-visual narrative medium.

## Accomplishments

{: .list-hr }
- [Lead game audio designer]({{ site.url }}/work/sound-design/ruff-trigger-playstation2-game/) in the early noughties, with 1 title shipped.
- Released a [personal story as a concept album](/work/music/after-1989/) on the 30<sup class="small">th</sup> anniversary of the opening of the Berlin Wall.
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
</div>

## More info

- [Equipment I use]({{ site.url }}/uses/)
- [Press photos]({{ site.url }}/press-photos/)
- [Name and logo]({{ site.url }}/about/name-and-logo/)