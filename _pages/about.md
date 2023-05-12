---
layout: page
title: 'About'
date: '2022-01-14'
last_modified_at: '2023-05-12 01:31:26'
description: 'Professional bassist and music producer, I love sound design, game audio, and mixing. To me, video games are the ultimate audio-visual narrative medium.'
permalink: '/about/'
---
<div class="notice">
  <details>
    <summary>Page contents</summary>
    <ul class="list-hr-group toc">
      <li><a href="#quick-facts">Quick facts</a></li>
      <li><a href="#work-accomplishments">Work accomplishments</a></li>
      <li><a href="#collaborations">Collaborations</a></li>
      <li><a href="#skills">Skills</a></li>
      <li><a href="#tools-proficiency">Tools proficiency</a></li>
      <li><a href="#gallery">Gallery</a></li>
    </ul>
  </details>
</div>

## Quick facts

Beliefs
: I wrote a personal [manifesto with principles I live by](/personal-manifesto/). The following is mostly work-centred.
: As a digital polymath, I truly embrace my eclectic career. Unlike the proverbial _jack of all trades_, I became highly proficient in three different industries: print, web, audio.

Early days
: During the 1990s I acquired audio skills in music studios and live, freelancing as a bass player.

Places
: I lived and worked for 16 years in Milan, where I also crafted a [parallel career in web development](https://simonesilvestroni.com) out of love for my first job in the print industry.
: Moved to the UK in 2011, where I kept working as a web and sound designer, shifting my focus towards the latter.

Crucial bits of formation
: Graduated (bass and music theory) at the _CPM Music Institute_ in 1995.
: Participated to the Game Developer Conference in 2002, where I witnessed to the launch of Steam by Valve and joined as a Bronze Member the [Game Audio Guild Network](/work/sound-design/ruff-trigger-playstation2-game/#game-developer-conference-and-gang) on the day of its foundation. At the same time, I started my first blog, journaling about working long hours on a console video game.
: Graduated at the _Berklee College of Music_ (audio mastering and music production) in 2017.

Trivia
: First name is pronounced `see-mow-nay`.
: Where does _Minutes to Midnight_ [come from]({{ site.url }}/about/name-and-logo/)?
: My favourite bass player is [Andy Rourke](http://www.andyrourke.com).

## Work accomplishments

In Italy
: [Lead game audio designer]({{ site.url }}/work/sound-design/ruff-trigger-playstation2-game/), with 1 title shipped for Sony PlayStation 2.
: Built a music studio from the ground-up.
: Audio content creator for mobile providers such as Vodafone.
: Web developer for the leading European bank UniCredit.

In the UK
: Released a [personal story as a concept album](/work/music/after-1989/) on the 30<sup class="small">th</sup> anniversary of the opening of the Berlin Wall.
: Worked as a [sound designer for a cartoon series](/work/sound-design/car-city-cartoon/).
: Apple certified for Logic Pro X, [I transitioned to Pro Tools and later REAPER](/blog/daw-from-logic-to-pro-tools-to-reaper-part-1/).
: Constantly looking for a way to complete a task in less and more efficient steps, I wrote an ebook about [project management for musicians]({{ site.url }}/work/project-management/).
: Co-founded and directed a design firm in London, with clients such as Reevoo, Not On The High Street, and overseas model agencies such as Elite.

## Collaborations

As a producer and bass player
: I've been working, in person and remotely, with [artist in the UK, the US and Italy](/work/music-production/) such as Gerald Duchene, Dan Ecclestone, Rachel Goodman, Ember Rev, Mally Harpaz (Anna Calvi), Ciara Clifford, Callum Gardner, Martin Wykes, Andrea Gobbi, Paolo Clementi, Gianluca Lo Presti, Emilio Albertoni, Method Sinik.
: Endorsed by [Leland Sklar and others](/work/endorsements/).

As a mixer
: I often share projects with renowned master engineer [Ian Shepherd](https://productionadvice.co.uk/about/), and occasionally with _SoundOnSound_ [editor in chief Sam Inglis](https://www.soundonsound.com/author/sam-inglis).

## Skills

{%- assign mainSkills = site.mainSkills | sort: 'name' %}
{%- assign completeSkills = site.completeSkills %}
{%- assign mainTools = site.mainTools %}
{%- assign completeTools = site.completeTools %}

<dl>
  <dt>Main</dt>
  {% for item in mainSkills -%}
  <dd><a href="{{ item.url }}">{{ item.name }}</a></dd>
  {%- endfor -%}
</dl>

<dl>
  <dt>More</dt>
  {% for item in completeSkills -%}
  <dd>{{ item.name }}</dd>
  {%- endfor -%}
</dl>

## Tools proficiency

I maintain a page where I list [the equipment I use]({{ site.url }}/uses/).

<dl>
  <dt>Main</dt>
  {% for item in mainTools -%}
  <dd><a href="{{ item.url }}">{{ item.name }}</a></dd>
  {%- endfor -%}
</dl>

<dl>
  <dt>More</dt>
  {% for item in completeTools -%}
  <dd>{{ item.name }}</dd>
  {%- endfor -%}
</dl>

{% comment %}
  {% for item in mainTools -%}<a href="{{ item.url }}">{{ item.name }}</a>, {% endfor -%}{% for item in completeTools -%}<span>{{ item.name }}</span>{% unless forloop.last%}, {% endunless %}{% if forloop.last %}.{% endif %}{% endfor -%}
{% endcomment %}

## Gallery

Photography &copy; 2019 [Silvia Maggi](https://silviamaggidesign.com).

{% include pattern-figure.html image="/assets/images/gallery-press/a_in-cambridge.jpg" alt="Simone Silvestroni in Cambridge, standing, with the Warwick Thumb Bass" caption="Standing, with a Warwick Thumb Bass" width="1600" height="1066" %}

{% include pattern-figure.html image="/assets/images/gallery-press/b_in-cambridge.jpg" alt="Simone Silvestroni, playing the Warwick Thumb Bass" caption="Playing the Warwick Thumb Bass" width="1600" height="1066" %}

{% include pattern-figure.html image="/assets/images/gallery-press/c_in-the-studio.jpg" alt="In the studio (Cambridge)" caption="In the studio (Cambridge)" width="1600" height="1066" %}

{% include pattern-figure.html image="/assets/images/gallery-press/e_in-the-studio.jpg" alt="In the studio (Cambrdige), playing a fretless Fender Jazz bass" caption="In the studio (Cambridge), playing a fretless Fender Jazz bass" width="1600" height="1066" %}

{% include pattern-figure.html image="/assets/images/gallery-press/f_live-in-london.jpg" alt="Playing live in London with Callum Gardner" caption="Playing live in London with Callum Gardner" width="1600" height="1066" %}

{% include pattern-figure.html image="/assets/images/live-with-callum-gardner.jpg" alt="Playing live in London with Callum Gardner" caption="Playing live in London with Callum Gardner" width="1600" height="1066" %}