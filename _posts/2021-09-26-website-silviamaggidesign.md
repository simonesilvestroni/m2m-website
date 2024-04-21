---
title: 'Website redesign for Silvia Maggi'
date: '2021-09-26'
last_modified_at: '2023-04-25 18:37:08'
tags:
  - 'dev project'
  - 'web development'
skillset:
  - Jekyll
  - Liquid
  - SASS
  - postCSS
  - Netlify
  - Node
  - Bootstrap 5
  - Git
  - WordPress
summary: 'Silvia Maggi is an expert in designing for accessibility and usability. Curator of the inspiration series ‘Design, Digested’.'
featimage: true
featimage-name: 'website-silviamaggidesign.jpg'
featimage-alt: Screenshot of the homepage for Silvia Maggi’s website
featimage-width: 1024
featimage-height: 622
---
## Skills

<ul class="list-inline">
  {% for skill in page.skillset %}
  <li><mark>{{ skill }}</mark></li>
  {% endfor %}
</ul>

## Objectives

Silvia said that, since sustainability and accessibility were core concerns, she required complete control over code and design. The ultimate goal was to redesign and build her personal website from scratch, following the increasing need to have an easy to customise, flexible site to contain her work, interests and passions.

## Approach

She used custom themes built on top of WordPress for a number of years. With the progressive build-up of fatigue, due to the complexity of the system and the intricacies of proper maintenance, she decided to go back to her roots. Clean and simple web standards, in the form of HTML and CSS. My suggestion was to use a static site generator, coupled with a ready-to-use CSS framework to avoid building one from scratch, [like we did in the past](/blog/a-modern-workflow-for-the-multi-device-web/). We ended up using Jekyll and Boostrap.

> The website obesity crisis is an increasing phenomena which gets worse every year. I wanted my website to represent a stance on sustainability.

I quickly imported all the content from WordPress within the new Jekyll templates, which allowed me to focus on working with Silvia on keeping the site as light-weight as possible through the use of SVG images, and a clever implementation of responsive images. I also created a flexible system for [photo galleries with carousels]({{ site.url }}/blog/responsive-photogallery-carousel-css/) in plain HTML and CSS.

To optimise the output from Bootstrap, I made sure we only imported the SASS modules that were required, and added a `PostCSS` Node module to the build command, to purge unnecessary styles before minification.

## Results

Silvia was happy about the ease of use of her new website. My input on adopting a light-weight Jekyll system, and optimising as much as possible, ensured brilliant results.

| Page weight | Pagespeed score | Loading time |
| ----------- | --------------- | ------------ |
| 91.4 KB     | 100             | 0.73 seconds |

[**Visit the live site**&nbsp;&rarr;](https://silviamaggidesign.com/){: .cta }