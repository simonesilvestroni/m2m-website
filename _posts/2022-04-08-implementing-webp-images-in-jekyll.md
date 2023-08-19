---
title: Implementing WebP images in Jekyll
date: '2022-04-08'
last_modified_at: '2022-04-08 20:48:34'
tags:
  - 'software'
  - 'sustainability'
  - 'web development'
description: "How to add WebP images to a Jekyll-based static site, to ensure new levels of optimization and performance."
---
## What is WebP

> WebP is a modern image format that provides superior lossless and lossy compression for images on the web. [...] WebP lossless images are 26% smaller in size compared to PNGs. WebP lossy images are 25-34% smaller than comparable JPEG images at equivalent quality index.
> <cite>[An image format for the Web, by Google](https://developers.google.com/speed/webp)</cite>

### Figure module (before)

```html
{% raw %}<figure class="{{ include.class | default: 'my-5 text-center' }}">
  <img class="mx-auto" src="{{ include.image }}" alt="{{ include.alt | default: include.caption }}" {{ include.width ? include.width | prepend: 'width="' | append: '"' }} {{ include.height ? include.height | prepend: 'height="' | append: '"' }}>
  {% if include.caption %}<figcaption class="p-name mt-3 caption">{{ include.caption }}</figcaption>{% endif -%}{% endraw %}
</figure>
```

### Figure module (after)

I created a `picture` element containing all the `srcset` needed for a full support. Although [WebP is supported in all major browsers](https://caniuse.com/?search=webp), I'm serving fallbacks to older versions.

```html
{% raw %}<figure class="{{ include.class | default: 'my-5 text-center' }}">
  <picture>
    <source srcset="{{ include.image | replace:'.png','.webp' | replace:'.jpg','.webp' | replace:'.jpeg','.webp' }}" type="image/webp">
    <source srcset="{{ include.image }}" {% if include.image contains '.jpg' or include.image contains '.jpeg' %}type="image/jpeg"{% elsif include.image contains '.png' %}type="image/png"{% endif %}>
    <img class="mx-auto" src="{{ include.image }}" alt="{{ include.alt | default: include.caption }}" {{ include.width ? include.width | prepend: 'width="' | append: '"' }} {{ include.height ? include.height | prepend: 'height="' | append: '"' }}>
  </picture>
  {% if include.caption %}<figcaption class="p-name mt-3 caption">{{ include.caption }}</figcaption>{% endif -%}{% endraw %}
</figure>
```

## Results

I got a double `100%` on GTMetrix, and improved my [512k club](https://512kb.club/#100) rank. I cut the loading time by a considerable amount in pages with multiple images.
