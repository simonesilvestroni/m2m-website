---
title: 'HTML and CSS responsive carousel in Jekyll'
tagline: false
date: '2022-02-23'
last_modified_at: '2022-03-03 11:12:01'
year: '2022'
type: 'web design'
subtype: "design and development"
skillset:
 - jekyll
 - liquid
 - responsive images
 - html
 - sass
description: 'I built a photogallery carousel in pure HTML and CSS featuring responsive images and touch controls for mobile devices.'
excerpt: false
summary: 'In a quest to continuous performance optimization, I created an image gallery carousel in pure HTML and CSS for the photography section in <a href="https://silviamaggidesign.com/photography/four-days-in-bordeaux/">Silvia’s website</a>. I then turned it into a full-fledged <strong>Jekyll module</strong> that I implemented here as well. It features responsive images and intuitive touch controls for mobile devices.'
toc: true
featimage: true
featimage-height: '574'
performance: false
site-is-live: true
live-url: 'https://silviamaggidesign.com/photography/four-days-in-bordeaux/'
permalink: '/projects/web-design/responsive-photogallery-carousel/'
---
## Removing Javascript-based UI components

When we [released Silvia's new website](https://silviamaggidesign.com/design/brand-new-website/), the photo galleries ran on two JS-based components from Bootstrap 5: one for modal windows and one for carousels. Back when we worked for UI Farm in London, we wrote a series of pure HTML and CSS web components such as accordions, interactive overlays, image galleries and more — but not a carousel.

I’ve always considered **web performance as a design feature**, not an afterthought. Hence, the use of Javascript for modal windows and carousels to me is a pointless waste of resources. In this case, it also littered the local development environment with a preposterous amount of node.js modules that I really wanted to get rid of.

## The module

First, the end result of this, meaning: what do we have to do in order to add a photo gallery in a page or post:

```liquid
{% raw -%}{% include pattern-imagegallery.html folder="/assets/images/gallery-press/" id="1" %}
{% endraw -%}
```

Pretty simple. We include an HTML file containing the logic and the markup, while passing two simple parameters: the path to the folder containing the images and a numeric ID. The only requirement is to follow the same naming convention for all the images, where the small low resolution version, used for preview in the page and navigation in the carousel, would have the prefix `thumb-`.

### Creating the photo gallery thumbnails

The first step is to render the list of thumbnails serving as preview. Taking advantage of Jekyll's **static files** feature, I set a default local path for all the images in the `config.yml` file. It's instructing the system to treat each file contained in that path as an image:

```yaml
defaults:
  - scope:
      path: "assets/images"
    values:
      image: true
```

The `section` tag wrapping the whole module has its specific dynamic ID, necessary for when multiple galleries are present in the same page. Inside, a `div` tag serves as a flexbox container to show the thumbnails in a centered row.

```html
{% raw %}<section id="gallery-{{ include.id }}">{% endraw %}
  <div class="d-flex flex-wrap justify-content-center">
```

The following logic fetches the correct images by filtering the path we passed earlier, working out their filenames to dynamically print a caption:

```liquid
{% raw -%}{%- for image in site.static_files | where: "image", true -%}
  {%- capture galleryPath -%}{{ include.folder }}{%- endcapture -%}
  {%- if image.path contains galleryPath -%}
    {%- assign filenameparts = image.path | split: "/" -%}
    {%- assign imgCaption = filenameparts | last | replace: image.extname,'' | replace: 'thumb-', '' | replace: 'a_','' | replace: 'b_','' | replace: 'c_','' | replace: 'd_','' | replace: 'e_','' | replace: 'f_','' | replace: 'g_','' | replace: 'h_','' | replace: 'i_','' | replace: 'l_','' | replace: 'm_','' | replace: 'n_','' | replace: 'o_','' | replace: 'p_','' | replace: 'q_','' | replace: 'r_','' | replace: 's_','' | replace: 't_','' | replace: 'u_','' | replace: 'v_','' | replace: 'z_','' | replace: '-',' ' | replace: '_',' ' -%}
    {%- if image.path contains 'thumb-' -%}
    <div class="ps-1 pe-2 text-center">
      <img class="rounded mx-auto d-block" src="{{ image.path }}" alt="{{ imgCaption | capitalize }}" width="150" height="150">
      <span class="d-block initialism mt-2 mb-4">{{ imgCaption }}</span>
    </div>
    {%- endif -%}
  {%- endif -%}
{%- endfor -%}
{% endraw -%}
```

To break it down:

- A `for` loop iterates through all the image files.
- `galleryPath` is a variable capturing the path parameter that I passed with the include function in the actual page.
- The first `if` condition restricts the context to the images contained within the `galleryPath`.
- The second `if` condition further restrics the context to the thumbnails.
- Image captions are generated through two steps:
    - `filenameparts` takes the actual image path, split through the trail slash;
    - `imgCaption` takes the last part of the file name minus the directory path and removes file suffixes and all the bits that aren’t useful to generate the caption.

This is the result, from my [About](/about/) page:

{% include pattern-figure.html image="/assets/images/gallery-thumbnails.jpg" alt="Column view thumbnail photo gallery" width="920" height="181" %}

All of the above is compiled by simply including this folder in the page:

{% include pattern-figure.html image="/assets/images/gallery-folder.jpg" alt="List of included images in the filesystem" width="431" height="290" %}

### Creating the modal window

Before the closing div and section, we include a second pattern containing the modal window and the carousel itself:

```html
    {% raw -%}{%- include pattern-modal-carousel.html -%}
  </div>
</section>
{% endraw -%}
```

The modal is wrapped in another flexbox `div`, where the first element is the button responsible for opening the modal itself:

```html
{% raw -%}<div class="m2m-modal-container d-flex flex-wrap justify-content-center mt-4">
  <input class="m2m-modal-btn" type="checkbox" id="m2m-modal-{{ include.id }}" name="m2m-modal-{{ include.id }}">
  <label class="btn btn-lg btn-m2m btn-m2m-cta py-3 px-4 fw-bold" for="m2m-modal-{{ include.id }}">📷 <span class="initialism fs-5 ps-1"><strong>Open the gallery</strong></span></label>
{% endraw -%}
```

By passing the same ID, we make sure each gallery has its own instruction, otherwise the system wouldn't know which one to open and close. Since the mechanism responsible for opening and closing the modal window is based on the well-established [checkbox hack](https://css-tricks.com/the-checkbox-hack/), a `label` HTML element is the _actual button_. The modal takes 95 percent of the available browser window width and height and is hidden by default, via SCSS:

```scss
.m2m-modal-container {
  [type="checkbox"]:not(:checked) {
    @extend .visually-hidden;
  }
}

.m2m-modal-wrap {
  width: 95vw;
  height: 95vh;
  margin: auto;
  border-radius: 4px;
  overflow: hidden;
  background-color: #000;
  align-self: center;
  opacity: 0;
  transform: scale(0.6);
  transition: opacity 250ms 250ms ease, transform 300ms 250ms ease;
}
```

We make the window appear when the checkbox is selected:

```scss
.m2m-modal-btn:checked ~ .m2m-modal {
  pointer-events: auto;
  opacity: 1;
  transition: all 300ms ease-in-out;
}
```

The close button is added in an `:after` pseudo-class, including a bit of further media query code (not shown here) to change its size on small devices.

```scss
.m2m-modal-btn:checked + label:after,
.m2m-modal-btn:not(:checked) + label:after {
  position: fixed;
  content: '❌';
  top: 4px;
  right: 4px;
  width: 40px;
  height: 40px;
  line-height: 40px;
  font-size: 1rem;
  text-align: center;
  background-color: $white;
  border-radius: 10em;
  transition: all 200ms linear;
  opacity: 0;
  pointer-events: none;
  transform: translateY(20px);
}
```

### Creating the carousel

The carousel is contained in a couple of `div`s, an unordered list and a navigation pattern. The list element contains the hi-res image, filtered by exclusion with the `unless` condition.

#### Hi-res images

```html
<div class="m2m-carousel-container d-flex justify-content-center">
  <div class="m2m-carousel">
    <ul class="m2m-carousel-scroll list-unstyled mx-0 my-0" scroll-behavior="smooth">
      {% raw -%}{%- unless image.path contains 'thumb-' -%}
      <li class="m2m-carousel-scroll-item-outer">
        <div id="{{ imgCaption | slugify }}-{%- increment slideId -%}" class="m2m-carousel-scroll-item">
          [=== slide image here ===]
        </div>
      </li>
      {%- endunless -%}
    </ul>
    [=== navigation here ===]
  </div>
</div>
{% endraw -%}
```

To break in down:

- The logic to pull the image is omitted, since it's the same as shown earlier for the thumbnails. 
- The ID for the `div` containing the image is made by two parts:
  - the caption variable with a `slugify` Jekyll filter which turns the spaces into dashes while removing capitalizations;
  - a filter to add an incremental number and keep the ID different throughout the carousel.
- There's a placeholder instead of the image in order to share more about the thought process: we initially printed the image path, name, alt tag, size etcetera. Once the module was complete, we realized **the hi-res images needed to be responsive** so that users on small devices could download pictures that weren't larger than their viewport. It was paramount that we avoided one of the widespread reasons why Pagespeed fails pages containing photo galleries.

#### Navigation

A navigation row sits at the bottom of the modal window, featuring the thumbnails linking to the related hi-res image above.

```html
{% raw -%}<nav id="m2m-slider-nav">
  {% comment %}
    *-----------------------------------
    Here's the same logic I used earlier
    to fetch the images from Jekyll's
    static files functionality.
    -----------------------------------*
  {% endcomment %}
  {%- assign imageNavPath = image.path | split: "/" | last | prepend: 'thumb-' -%}
  {%- assign slideId = 0 -%}
  {%- assign slideNavId = 0 -%}
  {%- assign slideNav = 0 -%}
  <a href="#{{ imgCaption | slugify }}-{%- increment slideNavId -%}">
    <img class="mx-auto d-block" src="{{ galleryPath }}{{ imageNavPath }}" alt="{{ imgCaption | capitalize }}" title="Click to view {{ imgCaption | capitalize }}" width="120" height="120">
  </a>
</nav>
{% endraw -%}
```

Besides the same liquid logic I've already employed to fetch the correct images and generate the captions, I introduce three new variables. They're all adopted to generate numerically incrementing IDs that keep the navigation in sync with the hi-res images.

### Mobile functionality

Through SCSS code, I made sure users could change slide by swiping left or right on the image, respecting any preference set in either the browser or the operating system for `reduced-motion`.

```scss
.m2m-carousel-scroll {
  @media (prefers-reduced-motion: no-preference) {
    scroll-behavior: smooth;
    @-moz-document url-prefix() {
      scroll-behavior: auto;
    }
  }
  display: flex;
  overflow-y: hidden;
  width: 100%;
  margin: 0;
  padding: 0;
  -webkit-overflow-scrolling: touch;
  scrollbar-width: none;
}
.m2m-carousel-scroll-item > img:active {
  cursor: grabbing;
  cursor: -webkit-grabbing;
}
@supports (scroll-snap-align: start) {
  .m2m-carousel-scroll {
    scroll-snap-type: x mandatory;
  }
  .m2m-carousel-scroll-item-outer {
    scroll-snap-align: center;
  }
}
@supports not (scroll-snap-align: start) {
  .m2m-carousel-scroll {
    scroll-snap-type: mandatory;
    scroll-snap-destination: 0 50%;
    scroll-snap-points-x: repeat(100%);
  }
  .m2m-carousel-scroll-item-outer {
    scroll-snap-coordinate: 0 0;
  }
}
```

### Further optimization: responsive images

As stated earlier, once the module was completed we realized to have forgotten about **the issue of large images on small devices**. Since we had already implemented responsive images in the website, I just decided to grab the code to render the hi-res pictures which generates different sizes for different media viewports:

```liquid
{% raw -%}{%- assign respFileNamePart = filenameparts | last -%}
{%- assign respImgPath = respFileNamePart | prepend: galleryPath | remove_first: "/" -%}
{% responsive_image_block %}
  path: {{ respImgPath }}
  alt: {{ imgCaption | capitalize }}
  margin-nil: 0
{% endresponsive_image_block %}
{% endraw -%}
```

The source code above generates the following HTML:

```html
<figure class="my-0 text-center">
  <img class="mx-auto" src="({{ site.url }}/assets/images/responsive/1200/a_in-cambridge.jpg" alt="In cambridge" srcset="({{ site.url }}/assets/images/responsive/576/a_in-cambridge.jpg 576w,({{ site.url }}/assets/images/responsive/768/a_in-cambridge.jpg 768w,({{ site.url }}/assets/images/responsive/1200/a_in-cambridge.jpg 1200w, ({{ site.url }}/assets/images/gallery-press/a_in-cambridge.jpg 1600w">
</figure>
```

It renders responsive images inside a `figure` tag, using `srcset` with the smallest resized image used as a fallback. Every time a new gallery is added to a page, Jekyll generates all the resized versions on its own.

## Results

### Testing on all devices

Tests were successful on all devices, desktop, tablets and smartphones with the browsers:

- Chromium-based
- Safari
- Firefox

Swiping on touch devices worked as expected while most browsers on desktop gracefully accepted the scroll snapping.

### Performance improvements

I solved the first requirement of wiping out all the Bootstrap-based Javascript from Silvia's website; moreover, I managed to remove the Flickr gallery embed  in the [About](/about/) page. Its previous benchmark using Pagespeed and GTmetrix gave appalling results. In a super-fast website, such an heavy third-party loading was unacceptable. It had to go. 

All tests after the new module was released gave stunning results: despite a total image weight of almost 2 megabytes, Pagespeed on mobile went from `27` to `100`:

{% include pattern-figure.html image="/assets/images/gallery-pagespeed-end-results-mobile.jpg" alt="Google Pagespeed results" width="920" height="611" %}

### Local development

Both our dev environments benefited from significant improvements:

- The local file structure is now simplified and lighter.
- `node_modules` went from 172 MB to 16 MB.
- `package.json` shrinked to 44 lines of code, including the dependencies we use to run scripts and automation needed to build and optimize the websites:

```json
"devDependencies": {
  "jekyll": "^3.0.0-beta1",
  "sass": "^1.49.8",
  "npm-run-all": "^4.1.5",
  "clean-css": "^5.2.4",
  "clean-css-cli": "^5.5.2",
  "postcss": "^8.4.6",
  "postcss-cli": "^9.1.0",
  "autoprefixer": "^10.4.2",
  "purgecss": "^4.1.3"
}
```

## Full source code

Check out my public gists for the three files:

- [Image gallery pattern](https://codeberg.org/m2m/css-responsive-photogallery-jekyll/src/branch/master/scss-image-gallery.md)
- [Modal window and carousel](https://codeberg.org/m2m/css-responsive-photogallery-jekyll/src/branch/master/pattern-modal.md)
- [SASS code](https://codeberg.org/m2m/css-responsive-photogallery-jekyll/src/branch/master/scss.md)

## Example: multiple galleries

To check the new module within a real-world page containing **multiple photo galleries**, click the button below and enjoy beautiful photos taken by Silvia in Bordeaux: