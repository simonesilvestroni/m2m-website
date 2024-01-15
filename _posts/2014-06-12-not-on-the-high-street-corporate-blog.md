---
title: 'Not On The High Street corporate blog'
date: '2014-06-12'
last_modified_at: '2023-12-19 15:14:42'
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
  - 'Agile'
description: 'I worked on Notonthehighstreet.com’s ambitious rebrand as co-director of the London-based design and development firm UI Farm.'
featimage: true
featimage-name: 'not-on-the-high-street-corporate-blog.jpg'
featimage-alt: Composite image showing four devices, mobile, tablet, laptop and large screen, featuring Not On The High Street’s website
featimage-width: 1024
featimage-height: 434
---
## Objectives

Notonthehighstreet.com, a unique UK e-commerce market place for small and independent sellers, needed to redesign their current corporate blog combining multiple scattered websites into one coherent, branded solution. A responsive website was a must, due to their ever increasing multi-device audience.

## Approach

I worked with Notonthehighstreet.com’s creative department to implement a responsive redesign using WordPress, tailoring the development using custom plugins to fit the client’s needs from the brief. As this was a team effort, I concentrated on delivering a solid user interface framework featuring specific web components, later to be intuitively used by Not On The High Street's employees to publish new posts.

Beyond the work on customised WordPress components, I focused on making our responsive framework as much performant as possible, including delivering a fast CSS-only carousel media gallery featuring CSS overlays for sharing the images. I also took charge of the continuous deployment routine, using Git, Ruby's Capistrano, and SSH. 

## Results

Integrating scattered blogs into a single cohesive redesigned website, we set up a _solid, secure and performant_ single WordPress installation, running a combination of custom PHP plugins and our responsive framework. Thus, we delivered a fully branded responsive website, with a subtle use of animations to _enhance the user experience_, not detrimental to the site's performance.

<div class="warning">
  <h3>Before redesign, desktop only</h3>
  <img src="/assets/images/not-on-the-high-street_before.jpg" alt="Non On The High Street corporate blog, desktop only" width="1024" height="622">
  <h3>After redesign</h3>
  <img src="/assets/images/not-on-the-high-street_after.jpg" alt="Non On The High Street corporate blog, responsive redesign" width="1024" height="434">
</div>

---

Created a “hero” post template, with customisable background image and vertical offset for the article. On top of that, the addition of a flexible <abbr title="What You See Is What You Get">WYSIWYG</abbr> visual editor and custom modules tailored to the client’s requirements, ensured an _intuitive and powerful creation of new content_.

![Custom 'hero' post template](/assets/images/not-on-the-high-street_art-direct.jpg){: width="800" height="668" }
_Custom 'hero' post template_

---

Implemented _responsive images_, serving images with different size and weight depending on the device capabilities.

---

Integrated a custom Javascript-less functionality to show all the media included in the post, with the option to view them in an elegant _media gallery_. It featured sharing capabilities on every image, with a call to action linking either to the full screen gallery or to the product’s shop page (based on the editor’s choice).

![Media gallery](/assets/images/not-on-the-high-street_gallery.jpg){: width="1024" height="795" }
_Showing all the media in a post, through a responsive carousel_

## Client endorsement

> We were really pleased with the results of working with UI Farm. We challenged them with our request for two beautiful and on brand WordPress websites with a tight time frame. They
delivered on time and on budget and were very flexible on the minor changes we wanted to make.
<cite>Iain McNeill, Head of Product</cite>

## Skills

<ul class="list-inline">
  {% for skill in page.skillset %}
  <li><mark>{{ skill }}</mark></li>
  {% endfor %}
</ul>