---
title: 'Minutes to Midnight'
date: '2022-02-12'
last_modified_at: '2022-02-12 12:41:41'
year: '2022'
type: 'web design'
skillset:
 - jekyll
 - liquid
 - markdown
 - sass
 - postCSS
 - netlify
 - node
 - bootstrap 5
 - git
 - bash
 - microformats
 - webmentions
description: 'Why my current website, built on Jekyll and hosted on Netlify, eclipses the previous one on IA, performance, sustainability and maintenance.'
excerpt: false
summary: '<strong>Migrating from WordPress</strong> to a static site generator has been a blessing. In this case study, I explain why my current website, built on Jekyll and hosted on Netlify, eclipses the previous one on <abbr title="Information Architecture">IA</abbr>, performance, sustainability and maintenance.'
toc: true
featimage: true
featimage-url: '/assets/images/minutes-to-midnight.jpg'
featimage-height: '574'
performance: true
googlescore: '100'
speedindex: '0.4 seconds'
pageweight: '159 kb'
site-is-live: true
live-url: 'https://minutestomidnight.co.uk'
permalink: '/work/web-design/minutes-to-midnight/'
---
## Why leaving WordPress

Web design-wise I come from the late 1990s, when I could write HTML code with a simple text editor. Anything that could go wrong was under my hands: easy to find, easy to fix. Fast to serve, quick to download.

**I'd been using WordPress since version `1.5`**. I can honestly say I'm an expert. Either on my own or with my former UI Farm team, I designed and coded custom themes and plug-ins for a large number of clients. 

There won't be criticism directed to WordPress in this case study. It's a personal account of a change of direction that was beneficial to my web presence. I will also note similarities and a way to maintain a sort of continuity between before and now. The rationale behind the choice of leaving WordPress is quite simple in the end.

### 1️⃣ Regain unconditional control over the workflow

- Writing in HTML and [Markdown](https://en.wikipedia.org/wiki/Markdown) using whichever editor.
- Handling the code from top to bottom.
- Owning the visual design to its fullest.
- Knowing _what_ every single bit of the building process is doing, _why_ and _how_.

### 2️⃣ Sustainability
  
- WordPress can serve websites with optimal performance; however, as a database-driven system it needs time to exchange with a remote server in order to return the page requested by the browser. I don't need that.
- Even if the above point is solved with an aggressive cache policy, the way it works inevitably leads to files and database swelling over time, requiring constant maintenance and a plethora of chores that I want to leave behind.

When my simple WordPress site ballooned to an unreasonable <kbd>740 MB</kbd> over a a couple of years — despite my relentless maintenance — **I switched to Jamstack**, in the form of a combination of the static site generator [Jekyll](https://jekyllrb.com/) and [Netlify](https://netlify.com/) as my new deployment, remote site builder and hosting service.

## Jamstack

The JAM in Jamstack means `Javascript, APIs, Markup`. Its core principles are **pre-rendering** and [decoupling](https://jamstack.org/glossary/decoupling/), which enable sites to be delivered very quickly and securely.

> Jamstack is an architecture designed to make the web faster, more secure, and easier to scale. It builds on many of the tools and workflows which developers love, and which bring maximum productivity.
> <cite>[What is Jamstack](https://jamstack.org/what-is-jamstack/)</cite>

On a foundation of markup and other assets being served directly from a CDN, Jamstack sites can use Javascript and APIs to talk to backend services, allowing experiences to be enhanced and personalized. More on the [benefits of Jamstack](https://jamstack.org/why-jamstack/).

## Jekyll

Jekyll is a site generator. It takes content, renders Markdown and Liquid templates and builds a static website ready to be served by a web server. It's also the engine behind **GitHub Pages**.

> Jekyll does what you tell it to do — no more, no less. It doesn't try to outsmart users by making bold assumptions, nor does it burden them with needless complexity and configuration. Put simply, Jekyll gets out of your way and allows you to concentrate on what truly matters: your content.
> <cite>[What is Jekyll](https://jamstack.org/generators/jekyll/)</cite>

My preference was to **set up Jekyll from scratch**, avoiding pre-built themes.

## Moving the content

Renouncing WordPress meant getting free from a few constraints, which carried the possibility of rethinking the entire information architecture. Before importing anything from my old site, [Silvia](https://silviamaggidesign.com) helped me reorganizing and refocusing the content, putting my multi-disciplinary skills back together.

I realized the importance of this stage later in the project, when I saw how convoluted was my previous navigation and how much material I decided to remove.

### Redirecting the old

Cutting content and moving stuff around has an effect on SEO. After making a list of all the current links, I used a redirection feature provided by Netlify in the form of a simple plain text `_redirects` file. It also supports wildcards:

```
https://blog.minutestomidnight.co.uk/* https://minutestomidnight.co.uk/blog/:splat 301!
```

### Importing

Once a new site map was sorted, I [proceeded to importing](https://import.jekyllrb.com/docs/wordpress/) posts and pages. Since I decided to refactor taxonomy, I bypassed it.

## Structure

A basic Jekyll-based website has a simple directory tree. In my case (I'm omitting redundant and subsequent additions):

```
. 
├── 📂 _data
│    ├── 📄 nav-site.yml
│    ├── 📄 nav-social.yml
│    └── 📄 <etc>
├── 📂 _drafts
│    ├── 📝 test.md
│    └── 📝 <etc>
├── 📂 _includes
│    ├── 📄 pattern-button.html
│    ├── 📄 site-seo.html
│    └── 📄 <etc>
├── 📂 _layouts
│    ├── 📄 blog.html
│    ├── 📄 default.html
│    └── 📄 <etc>
├── 📂 _pages
│    ├── 📂 work
│    │    ├── 📝 index.md
│    │    └── 📝 <etc>
│    ├── 📝 about.md
│    ├── 📝 archive.md
│    └── 📝 <etc>
├── 📂 _posts
│    ├── 📝 2021-08-13-berlin-91.md
│    ├── 📝 2022-03-02-bandcamp-joins-epicgames.md
│    └── 📝 <etc>
├── 📁 _site
├── 📂 assets
│    ├── 📂 css
│    │    ├── 📄 m2m.css
│    │    └── 📄 m2m.min.css
│    ├── 📂 images
│    │    ├── 🌠 m2m-og-image.jpg
│    │    ├── 🌠 watercolor.png
│    │    └── 🌠 <etc>
│    └── 📁 js
├── 📂 category
├── 📂 tag
├── 📂 sass
│    ├── 📁 bootstrap
│    ├── 📄 _m2m-functions.scss
│    ├── 📄 _m2m-theme.scss
│    ├── 📄 _<etc>
│    └── 📄 m2m.scss
├── 📄 .gitignore
├── 📝 404.html
├── 📄 _config.yml
├── 📄 _config-production.yml
├── 🌠 favicon.ico
├── 📄 Gemfile
├── 📝 index.html
├── 📄 package.json
.

```

### Redirecting old taxonomies

The above tree reflects the situation when I started working on the new website. The only two directories that aren't native to Jekyll are `category` and `tag`, each containing multiple directories named after deleted taxonomies from WordPress. Inside, an `index.html`  redirects users to the new **Archive** page.

I've taken this route so that old links published on the internet and any sitemap uploaded to search engines wouldn't start to show [404 errors](https://en.wikipedia.org/wiki/HTTP_404) once the new site was live.

#### Creating manual redirections

This is what I've done: 

- Exported a `.csv` file from WordPress containing the old taxonomies.
- Copied categories and tags that I wanted to remove in two files called `categories.txt` and `tags.txt`.
- Used `xargs` in each directory to create a list of folders named after the old taxonomies:
```bash
$ mkdir -p categories tags
$ cd categories
$ xargs -tI % mkdir % < categories.txt
$ cd ../tags
$ xargs -tI % mkdir % < tags.txt
```
As an example, here's the folders generated under `/category/`: {% include pattern-figure.html image="/assets/images/taxonomies-tree-cats.png" alt="Tree example for generated directories" width="500" height="486" %}
- Then, I generated an empty HTML index file into each directory:
```bash
$ find . -type d | xargs  -I '{}' touch '{}/index.html'
```
- Finally, I injected the redirection code into each `index.html` file previously created. To do so, I ran a single command:
```bash
$ find . -type f -name "*.html" -exec sh -c 'cat redirection.txt >> "$1"' -- {} \;
```

Netlify's `_redirects` file could have taken care of this, however, I had decided to adopt a manual solution for two reasons:

1. When I started the project I had planned to deploy the website to Cloudflare Pages, whose `_redirects` file was limited to `100`.
2. Even after deciding to use Netlify, given the large amount of removed tags from WordPress, I didn't want to clutter my redirection file.

Recently, I changed my mind and decided to use `_redirects` 😑, which cut `37 KB` from the site.

### Liquid template language

[Liquid](https://github.com/Shopify/liquid/) is an open source template language written in Ruby. It was **created by Shopify** and is now used in Jekyll, Salesforce, Zendesk, 500px [and more](https://github.com/Shopify/liquid/wiki#who-uses-liquid).

Coming from PHP and WordPress, I've found Liquid incredibly intuitive. Similarly to how I ended up relying on Markdown, I consider Liquid as a simpler programming language — yet powerful enough to let me **build complex component** that fuels the static site.

### Layouts

Using a mix of HTML and Liquid logic, I built specific layouts for pages, posts, archives and landings. The functionality is vaguely similar to templates in WordPress.

I love how a layout in Jekyll can inherit other layouts, thus the possibility of nesting different set of templates to **build more powerful and complex structures**. Key to this are:

- The special Liquid variable `{% raw %}{{ content }}{% endraw %}`, whose value is the rendered content of the post or page being wrapped.
- The `layout` declaration at the top of each page and post.

For example, after I built a `default.html` layout, containing my general structure and all the basic inclusions like header, content and footer, I _injected_ a second layout called `page.html` into it. I simply added to this second layout:

```yml
---
layout: default
---
```

The above instruction allows the page layout to be entirely included in the `{% raw %}{{ content }}{% endraw %}` variable of `default.html`.

### Modularity

Writing a vast array of components, collected in the `_includes/` folder, was an enjoyable and illuminating process. I have two types:

1. **Layout modules**: header, footer, navigation etc.
2. **Embeddable modules** recurringly added to posts and pages: images, videos etc.

While the first type is going to be occasionally edited or optimized, the embeddable modules are similar in usage to [shortcodes](https://wordpress.com/support/shortcodes/) (or the more recent editor blocks) in WordPress. I wrote many PHP shortcodes in the past, yet I can build Jekyll modules in seconds, reaching granular levels of detail and only **focusing on what I really use**.

#### Example: YouTube

My simple module to embed YouTube videos, called `pattern-video.html`:

```liquid
{% raw %}<div class="video iframe-container{{ include.margin | default: "my-5" | prepend: ' ' }}">
  <iframe loading="lazy" src="https://www.youtube-nocookie.com/embed/{{ include.id }}" frameborder="0" allowfullscreen title="{{ include.title | default: "Video" }}"></iframe>
</div>{% endraw %}
```

Whenever I need to embed a video, I just call a snippet, passing a video ID parameter and an optional title:

```liquid
{% raw %}{% include pattern-video.html id="N0Sa-1Vqn6g" title="Berlin 91 official music video" %}{% endraw %}
```

The SASS part of the module takes care of making the iframe fully responsive:

```scss
.iframe-container {
  padding-top: 56.25%; /* 16:9 aspect ratio */
  overflow: hidden;
  position: relative;

  iframe {
    border: 0;
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
  }
}
```

#### Automating the embed

I've been using [Alfred](https://www.alfredapp.com/) on macOS for many years. Among other things, it offers access to clipboard history and **creation of custom text snippets**. A keyword for each snippet can be set. For example, to embed my include code for adding a `<figure>` tag, I type `/figure` and then complete the missing data where `000` is present:

{% include pattern-figure.html image="/assets/images/embed-figure.gif" alt="Short animation of how I embed a figure tag" caption="Embedding a figure tag using Alfred" width="1050" height="470" %}

Like the block editor in WordPress, I associated keywords such as `/image`, `/youtube` and so on. All modules, whether simple like the above or complex like the [image gallery carousel](https://minutestomidnight.co.uk/work/web-design/responsive-photogallery-carousel/), work the same way. I can also recall Alfred's snippets window with my shortcut **⌥ ⌘ C**, select the one I need and hit enter.

{% include pattern-figure.html image="/assets/images/embed-alfred.jpg" alt="Alfred's snippets recall window" caption="Alfred's snippets recall window" width="960" height="562" %}

### Assets

Static assets such as images, CSS, Javascript, PDF files etc, are located in `/assets/` — each type served from its specific folder. Jekyll allows me to access these assets through the [static files functionality](https://jekyllrb.com/docs/static-files/). Since I want Jekyll to know which ones are images, I set a default local path in `config.yml`, so that each file contained in that path is treated as an image:

```yml
defaults:
  - scope:
      path: "assets/images"
    values:
      image: true
```

### Markdown

**Posts, notes, pages and case studies** are written in Markdown. Jekyll's advanced implementation includes footnotes, code highlighting and more.

A case study is a particular content type outside the posts loop, created using [collections](https://jekyllrb.com/docs/step-by-step/09-collections/). Collections remind me of custom post types in WordPress. Once again, setting up a collection in Jekyll is a _matter of seconds_ and they can easily be changed or moved around.

## Design

The theme is handcrafted by applying styles to the layouts. I'm using a subset of Bootstrap's SASS source as a base, with my theme and functionality built on top of it. I'm planning to ditch Bootstrap in the near future for a custom-made micro framework written in pure traditional CSS with a utility-first classes approach.

Once the SASS is compiled, the build process takes care of minification and optimization (more on this later). The final CSS file is loaded differently, depending on local or remote environment:

```html
{% raw %}{% if jekyll.environment == "production" -%}
<link rel="stylesheet" href="/assets/css/m2m.min.css">
{% else -%}
<link rel="stylesheet" href="/assets/css/m2m.css">
{%- endif -%}{% endraw %}
```

## SEO

Search engine optimization is scattered around in a few locations, all collected in the default layout. The starting point is the possibility to redirect a post or page, based on the presence or not of the variable `redirection` in [Front Matter](https://jekyllrb.com/docs/front-matter/).

```html
{% raw %}{%- if page.redirection %}
<meta http-equiv="refresh" content="0;url='{{ page.redirection }}'" />
{% endif -%}{% endraw %}
```

I then check upon the existence of another variable called `robots`, used to exclude the page from search engine crawling.

```html
{% raw %}{%- if page.robots %}
<meta name="robots" content="{{ page.robots }}" />
{% endif %}{% endraw %}
```

The page title is rendered based on a few checks, so that it's always well structured.

```liquid
{% raw %}{%- if page.url == "/" -%}
{{ site.title | append: ' – ' }}{{ site.tagline }}
{%- elsif page.url == "/notes/" -%}
{{ page.title | append: ' – ' }}{{ site.title }}
{%- elsif page.url contains 'notes' -%}
{{ page.date | date: "%-d %B %Y" }}: {{ page.tags[0] | capitalize }}{{ site.title | prepend: ' – ' }}
{%- elsif page.type == 'category' or page.type == 'tag' -%}
{{ page.type | capitalize }}: {{ page.title | capitalize | append: ' – ' }}{{ site.title }}
{%- else -%}
{{ page.title | append: ' – ' }}{{ site.title }}
{%- endif -%}{% endraw %}
```

I get into proper SEO territory next.

```liquid
{% raw %}{% unless page.redirection %}
{%- include site-seo.html -%}
{% endunless %}{% endraw %}
```

The content of `site-seo.html` is made of:

- [Canonical link](https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls), where I check against a page variable called `canonical`, in case the post has already been published elsewhere earlier.
  ```html
  {% raw %}<link rel="canonical" href="{% if page.canonical %}{{ page.canonical }}{% else %}{{ page.url |  replace:'index.html','' | absolute_url }}{% endif %}">{% endraw %}
  ```
- [Meta description](https://developers.google.com/search/docs/advanced/appearance/snippet?hl=en), where I check for the presence of a page variable called `description`. The fallback value is found in the `config.yml` site configuration file.
  ```html
  {% raw %}<meta name="description" content="{% if page.description %}{{ page.description }}{% else %}{{ site.description }}{% endif %}">{% endraw %}
  ```
- [Open Graph](https://ogp.me/). This is the content appearing in the 'card' which unfurls when links from my website are shared to Facebook, LinkedIn, Twitter and instant messengers like Telegram or WhatsApp. I check for `description` and the presence of a featured image, again with fallbacks.
  ```html
  {% raw %}<!-- Open graph -->
  <meta property="og:title" content="{%- include site-meta-title.html -%}" />
  <meta property="og:url" content="{{ page.url | prepend: site.url }}" />
  <meta property="og:type" content="website" />
  <meta property="og:site_name" content="{{ site.title }}" />
  <meta property="og:description" content="{% if page.description %}{{ page.description }}{% elsif note.description %}{{ note.description }}{% else %}{{ site.description }}{% endif %}" />
  <meta property="og:image" content="{% if page.featimage %}{{ site.url }}{{ page.featimage-url }}{% else -%}{{ site.logo | prepend: site.url }}{% endif %}" />
  <!-- LinkedIn -->
  <meta prefix="og: https://ogp.me/ns#" property="og:title" content="{%- include site-meta-title.html -%}" />
  <meta prefix="og: https://ogp.me/ns#" property="og:type" content="website" />
  <meta prefix="og: https://ogp.me/ns#" property="og:description" content="{% if page.description %}{{ page.description }}{% elsif note.description %}{{ note.description }}{% else %}{{ site.description }}{% endif %}" />
  <meta prefix="og: https://ogp.me/ns#" property="og:image" content="{% if page.featimage %}{{ site.url }}{{ page.featimage-url }}{% else -%}{{ site.logo | prepend: site.url }}{% endif %}" />
  <meta prefix="og: https://ogp.me/ns#" property="og:url" content="{{ page.url | prepend: site.url }}" />
  <!-- Twitter integration -->
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="{%- include site-meta-title.html -%}" />
  <meta name="twitter:url" content="{{ site.url }}{{ page.url }}" />
  <meta name="twitter:description" content="{% if page.description %}{{ page.description }}{% elsif note.description %}{{ note.description }}{% else %}{{ site.description }}{% endif %}" />
  <meta name="twitter:image" content="{% if page.featimage %}{{ site.url }}{{ page.featimage-url }}{% else -%}{{ site.logo | prepend: site.url }}{% endif %}" />{% endraw %}
  ```
- [Schema](https://schema.org/docs/documents.html) is "a collaborative, community activity with a mission to create, maintain, and promote schemas for structured data on the Internet, on web pages, in email messages, and beyond."
  ```html
  {% raw %}<!-- Schema -->
  <script type="application/ld+json">
  {
    "@context": "http://schema.org",
    {% if page.is_post -%}
    "@type": "BlogPosting",{% else %}"@type": "WebSite",
    {%- endif %}
    "name": "{%- include site-meta-title.html -%}",
    "headline": "{%- include site-meta-title.html %} {{ site.tagline }}",
    "url": "{{ site.url }}{{ page.url }}",
    "description": "{% if page.description %}{{ page.description }}{% elsif note.description %}{{ note.description }}{% else %}{{ site.description }}{% endif %}",
    "keywords": "{% if page.tags %}{{ page.tags | join: ',' }}{% else %}{{ site.keywords }}{% endif %}",
    {%- assign tagArchive = page.type | where: 'post.type', 'tag' -%}
    {% unless tagArchive %}
    "datePublished": "{{ page.date }}",
    "dateModified": "{{ page.last_modified_at }}",
    {% endunless -%}
    "author": {
      "@type": "Person",
      "name": "Simone Silvestroni",
      "givenName": "Simone",
      "familyName": "Silvestroni"
    },
    "mainEntityOfPage": {
      "@type": "WebPage",
      "@id": "{{ site.url }}{{ page.url }}"
    },
    "sameAs": [
      "https://indieweb.social/@m2m",
      "https://uk.linkedin.com/in/minutes2mid/",
      "https://github.com/minutes2midnight/",
      "https://www.flickr.com/photos/minutes2midnight/"
    ],
    {%- if page.featimage %}
    "image": {
      "@type": "ImageObject",
      "width": "1024",
      "height": "765",
      "url": "{{ site.url }}{{ page.featimage-url }}"
    }
    {%- else %}
    "image": {
      "@type": "ImageObject",
      "width": "1200",
      "height": "628",
      "url": "{{ site.url }}{{ site.logo }}"
    }
    {%- endif %}
  }
  </script>{% endraw %}
  ```

Without using Yoast or any other SEO plug-ins, a benchmark using Google Lighthouse gives a `100` result on SEO, with all 15 audits fully passed.

## File management

Since I don't need any set up for Apache, PHP or MySQL, file management is extremely easy. Using GitHub as a versioning system, my local website directory is a perfect mirror of the remote repository. Again, all my images, CSS or other assets are kept together with the source code. No external database to be backed up, no extra maintenance.

## Build process
Instead of using Jekyll's internal build tasks, I switched to <kbd>Node.js</kbd>. The following is the `scripts` section in my `package.json` configuration:

```json
"scripts": {
  "serve": "bundle exec jekyll serve --livereload",
  "servedraft": "bundle exec jekyll serve --drafts --livereload",
  "servefuture": "bundle exec jekyll serve --drafts --future --livereload",
  "watch": "sass --watch sass:assets/css",
  "start": "npm-run-all --parallel serve watch",
  "css-compile": "sass --style expanded --embed-sources --no-error-css sass/:assets/css/",
  "css-purge": "purgecss --css \"assets/css/m2m.css\" --content \"_site/**/*.html\" --safelist active --output \"assets/css\"",
  "css-prefix": "npx postcss \"assets/css/m2m.css\" --use autoprefixer -d assets/css/",
  "css-minify": "cleancss -O1 --format breakWith=lf --with-rebase --source-map-inline-sources --output assets/css/ --batch --batch-suffix \".min\" \"assets/css/*.css\" \"!assets/css/*.min.css\"",
  "css": "npm-run-all css-compile css-purge css-prefix css-minify"
}
```

### Serving locally

I've recently merged the two tasks `serve` and `watch` (respectively running the website to `localhost` and compiling CSS at every change in SASS). With the new collective task `start` I can run a single command to manage both in parallel:

```bash
$ npm run start
```

I've also added scripts to see drafts and future posts before committing to git and deploy to production. 

### CSS

A chain of CSS scripts are gathered together in the command `css` by using `npm-run-all`. In short:

1. `css-compile` compiles SASS into plain CSS, which is what I use for local debugging.
2. `css-purge` removes unused CSS code using [PostCSS](https://postcss.org/).
3. `css-prefix` automatically adds vendor prefixes to non-standard CSS instructions, again using PostCSS.
4. `css-minify` creates the final minified version for production.

The above process brings my CSS from `337 KB` (including the `.css.map` file) down to `39 KB`.

### Javascript

I don't compile nor minify Javascript using Node because I only use it for the search engine and a bit of vanilla DOM manipulation. I never need to edit it, therefore I simply manually minify the files.

## Performance, accessibility and sustainability

I've been treating **performance as a design feature** for more than ten years. The complete size of the website is currently **40.4 MB**, which includes source code, images and the build ready to be deployed. It's a whopping `94.6%` reduction from before. What contributes to my Pagespeed and Lighthouse score of `100` on performance, accessibility and SEO?

- Semantic and valid structured code.
- Detailed attention to <abbr title="Web Content Accessibility Guidelines">WCAG</abbr> accessibility requirements.
- Use of images only when strictly needed.
- Responsive images (small devices are served with specific smaller versions).
- Avoiding Javascript when valid alternatives can be employed.
- Multi-platform system font stacks instead of custom fonts.
- Relentless optimization of static assets.
- A fast server.

I took care of removing files not needed on the live server, by adding a second `config-production.yml`. My build command on Netlify is:

```bash
bundle exec jekyll build --config _config.yml,_config-production.yml
```

### Benchmarks

<div class="table-responsive">
  <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col" class="align-top text-center fw-bold"><strong>Markup</strong></th>
        <th scope="col" class="align-top text-center fw-bold"><strong>Google score</strong></th>
        <th scope="col" class="align-top text-center fw-bold"><strong>Speed index</strong></th>
        <th scope="col" class="align-top text-center fw-bold"><strong>Homepage weight</strong></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="text-center fs-3">✅ <a href="https://validator.w3.org/nu/?doc=https://minutestomidnight.co.uk/" target="_blank" rel="noopener">valid</a></td>
        <td class="text-center fs-3"><a href="https://pagespeed.web.dev/report?url=https%3A%2F%2Fminutestomidnight.co.uk%2F" target="_blank" rel="noopener"><code>100</code></a></td>
        <td class="text-center fs-3 fw-bold"><code>0.4 sec</code></td>
        <td class="text-center fs-3"><code>159 kb</code></td>
      </tr>
    </tbody>
  </table>
</div>

### Accessibility

- ✅ **No errors** for 
<abbr title="Web Content Accessibility Guidelines">WCAG</abbr> detected on [WAVE](https://wave.webaim.org/report#/https://minutestomidnight.co.uk/){:target="_blank" rel="noopener"}.
- ✅ **`100`** on [Google Lighthouse](https://web.dev/measure/){:target="_blank"}

### Sustainability

Only `0.07g of CO2` is produced every time someone visits the homepage. Cleaner than `93%` of [web pages tested](https://www.websitecarbon.com/website/minutestomidnight-co-uk/ "Visit Website carbon"){:target="_blank" rel="noopener"}. The website is running on sustainable energy.

{: .detached }
Due to the site compact size, it's member of: [<img src="/assets/images/orange-team.svg" alt="512kb Orange Team">](https://512kb.club)

## Search engine

As a static site generator, Jekyll lacks two features: a **search functionality** and a **comment system**. I solved the first by including a clever vanilla [Javascript solution](https://github.com/daviddarnes/jekyll-search-js) supported by Liquid syntax to indicize the content. A [script-free solution](/search/) using DuckDuckGo is provided.

## Maintenance

Maintaining my new website is one of the easiest task I've ever encountered in web design and development. It can be reduced to three main situations:

### 1️⃣ New content

Whether it's a new post, a new note, page or collection, I simply create an `.md` file (often duplicating the latest), name it accordingly, adapt a couple of variables in the Front Matter and off I go. Editing existing material is even easier: I open the editor, change what need changing, save and commit to git.

### 2️⃣ Updates to the web stack

Keeping Jekyll, its plug-ins and the Node modules up to date is straightforward. I locked most of my Ruby gems to a specific version, so I can vet updates before blindly upgrading. Running the command `bundle update` is all it takes.

### 3️⃣ A new major design feature

For major changes that are likely to take a few days, I create a new branch in my git repository. Since I'm working on my own, the new material will stay local. Once it's done and tested, merging the branch into master is a matter of seconds.

If in the meantime anything else needs changing, I can temporarily switch to the master branch, make the edit and push it to production. It's also easy to [set up a staging environment on Netlify](https://www.netlify.com/products/workflow/) to publicly show new features.

## Integrations: Webmentions, Indieweb

After deciding to avoid third-party commenting systems, I turned to [webmentions](https://alistapart.com/article/webmentions-enabling-better-communication-on-the-internet/). An underrated and vastly ignored **W3C standard**, it's basically a _decentralized_ way to interact with other websites' posts, notes, likes and reposts. From the specs:

> A Webmention is a notification that one URL links to another. For example, Alice writes an interesting post on her blog. Bob then writes a response to her post on his own site, linking back to Alice's original post. Bob's publishing software sends a Webmention to Alice notifying that her article was replied to, and Alice's software can show that reply as a comment on the original post.
> 
> Sending a Webmention is not limited to blog posts, and can be used for additional kinds of content and responses as well. For example, a response can be an RSVP to an event, an indication that someone "likes" another post, a "bookmark" of another post, and many others. Webmention enables these interactions to happen across different websites, enabling a distributed social web.
> <cite>[W3C Recommendation, 2017](https://www.w3.org/TR/webmention/#w3c-recommendation-12-january-2017)</cite>

I've been out of mainstream social networks for over a year and a half, so **putting my website at the center of my online presence** seemed perfect. I won't be going deep into how I integrated webmentions, but in a nutshell this is what I've done:

- Joined the [Indieweb](https://indieweb.org/).
- Created a structured `h-card` using [Microformats 2](http://microformats.org/wiki/microformats2) for posts, notes and pages.
- Tested my h-cards on [Indiewebify](https://indiewebify.me/).
- Linked the website to [Webmention.io](https://webmention.io/) and created [Micropub](https://indieweb.org/Micropub) and [Microsub](https://indieweb.org/Microsub) endpoints.

Even though Netlify has a free plug-in that would automatically send webmentions from my site at every new build, I prefer to rely on manual triggers using external free and open source services:

- [Telegraph](https://telegraph.p3k.io/) send webmentions from my site to others.
- [Brid.gy](https://brid.gy/) pulls webmentions to mine from certain external sites such as WordPress, Mastodon and Flickr, among many others — with the added capability to cross-post my content there. This principle is called [POSSE](https://indieweb.org/POSSE) — Publish (on your) Own Site, Syndicate Elsewhere.

{% include pattern-figure.html image="/assets/images/webmention-reactions.png" alt="Webmentions on a recent blog post" caption="Webmentions on a recent blog post, including likes and reboost from Mastodon" width="720" height="473" %}