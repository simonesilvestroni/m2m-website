---
title: 'Responsive Photogallery and Carousel in HTML and CSS'
date: '2022-02-22'
last_modified_at: '2023-12-05 20:14:54'
tags:
  - 'dev project'
  - 'web development'
skillset:
 - Jekyll
 - Liquid
 - Responsive images
 - HTML
 - CSS
 - SASS
 - Bootstrap 5
summary: 'I built a photogallery carousel in pure HTML and CSS, featuring responsive images and touch controls for mobile devices.'
featimage: true
featimage-name: 'responsive-photogallery-carousel-css.jpg'
featimage-alt: Screenshot of the photogallery in action, showing a large image and three thumbnails underneath
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

While working on [Silvia Maggi's new website]({{ site.url }}/blog/website-silviamaggidesign/), we realised that her photo galleries, relying on two Javascript-based components from Bootstrap 5, were slowing down the loading time and affecting the benchmarks. Since we shared a principle of considering _web performance as a design feature_ instead of an afterthought, she asked me to create an image gallery carousel in HTML and CSS instead. It had to be integrated in Jekyll, adopt responsive images and a few intuitive touch controls for mobile devices.

## Approach

Over the years, in a quest to continuous performance optimisation, I have been writing HTML and CSS alternatives to complex accordions, interactive overlays, image galleries and more. As I once again deemed the use of Javascript for such a case a waste of resources, I resorted to a similar technique.

<aside class="warning">
  <h3>Ease of use</h3>
  <p>The code under the hood is relatively complex, but I wanted to make the implementation as easy as possible. Since the functionality had to be included in a static website generator without an admin CMS, the ease of use could go as far as having to add a single line of code to include a directory in the page source. The module took care of everything else.</p>
  <p>First, the images to be used in a gallery need to be prepared, both miniature and high-resolution. As an example, Silvia had a gallery with 3 photos in her filesystem, including small <code>150x150</code> square thumbnail versions:</p>
  <p><img src="{{ site.url }}/assets/images/gallery-folder.jpg" width="1024" height="275" alt="A window in macOS' Finder filesystem, showing six images, three in high-resolution, three in thumbnail size"></p>
  <p>The following bit of Jekyll Liquid <em>include</em> code was needed to create a visual column view preview in the page, a launch button, and both gallery and carousel in a modal window:</p>
  <pre><code class="language-liquid">{% raw %}{% include pattern-imagegallery.html folder="/assets/images/gallery-2/" id="1" %}{% endraw %}</code></pre>
  <p>The resulting column view navigation preview, using the thumbnails, followed by a button to launch the carousel:</p>
  <p><img src="/assets/images/gallery-thumbnails.jpg" alt="Column view thumbnail photo gallery" width="1024" height="622"></p>
</aside>

### The photogallery in action

On Silvia's website a few splendid [photogalleries can be seen in their carousels](https://silviamaggidesign.com/photography/four-days-in-bordeaux/). A technical description, with public gists for the source code can be found [on GitHub](https://github.com/simonesilvestroni/css-responsive-photogallery).

### Improvements

I'm considering two future improvements: in case a CMS admin dashboard had been integrated with Jekyll, I could wrap the module into a full-fledged Jekyll plugin, as a drag-and-drop object in the CMS. Also, from an accessibility standpoint, the CSS hack used to launch the modal window [isn't satisfactory](https://triss.dev/blog/css-checkbox-hack/).

## Results

Tests were successful on all devices, desktop, tablets and smartphones with modern browsers. Swiping on touch devices worked as expected while most browsers on desktop gracefully accepted the scroll snapping. Performance checks returned stunning results: thanks to the efficient code, and the [implementation of responsive images](https://github.com/simonesilvestroni/css-responsive-photogallery#responsive-images), Pagespeed on mobile went from <code>27</code> to <code>100</code>.