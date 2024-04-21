---
title: Implementing WebP images in Jekyll
date: '2022-04-08'
last_modified_at: '2022-04-08 20:48:34'
tags:
  - 'dev project'
  - 'software'
  - 'sustainability'
  - 'web development'
skillset:
  - Jekyll
  - Liquid
  - Markdown
  - HTML
  - Browser support
summary: "Adding WebP images to my Jekyll-based static site ensured new levels of optimisation and performance."
---
<aside>
  <p><strong>Note</strong> — WebP is a modern image format <a href="https://caniuse.com/?search=webp">supported in all major browsers</a> that provides superior lossless and lossy compression for images on the web. WebP images are between 25% and 34% smaller than comparable PNGs and JPEGs.</p>
</aside>

## Skills

<ul class="list-inline">
  {% for skill in page.skillset %}
  <li><mark>{{ skill }}</mark></li>
  {% endfor %}
</ul>

## Objectives

While I initially wanted to achieve further performance improvements on my website, the actual end goal was to properly implement a modern `<figure>` module that included the `<picture>` element, tailored to the static site generator Jekyll.

## Approach

I created a `<picture>` element containing all the `srcset` needed to serve fallbacks to fully support older browsers. Within my workflow, the module would be called in any page or post with a single Liquid include, using the Alfred snippet `/figure` to speed up the process. I only had to pass the name of the image, the alternative description, a caption (that could serve as a default alt parameter), and size.

```html
{% raw %}<figure>
  <picture>
    <source srcset="{{ include.image | replace:'.png','.webp' | replace:'.jpg','.webp' | replace:'.jpeg','.webp' }}" type="image/webp">
    <source srcset="{{ include.image }}" {% if include.image contains '.jpg' or include.image contains '.jpeg' %}type="image/jpeg"{% elsif include.image contains '.png' %}type="image/png"{% endif %}>
    <img src="{{ include.image }}" alt="{{ include.alt | default: include.caption }}" {{ include.width ? include.width | prepend: 'width="' | append: '"' }} {{ include.height ? include.height | prepend: 'height="' | append: '"' }}>
  </picture>
  {% if include.caption %}<figcaption>{{ include.caption }}</figcaption>{% endif -%}{% endraw %}
</figure>
```

## Results

I cut the loading time by a considerable amount in pages with multiple images, getting a double `100%` on GTMetrix, and improving my [512k club](https://512kb.club/#100) rank.