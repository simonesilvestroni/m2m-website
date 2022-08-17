---
title: 'Minutes to Midnight'
date: '2022-02-12'
last_modified_at: '2022-02-12 12:41:41'
year: '2022'
type: 'web design'
subtype: "design and development"
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
description: 'Why my current website, built with Jekyll and Netlify, eclipses the previous one on IA, performance, sustainability and maintenance.'
excerpt: false
summary: '<strong>Migrating from WordPress</strong> to a static site generator has been a blessing. In this case study, I explain why my current website, built on Jekyll and hosted on Netlify, eclipses the previous one on <abbr title="Information Architecture">IA</abbr>, performance, sustainability and maintenance.'
toc: true
featimage: true
featimage-url: '/assets/images/minutes-to-midnight.jpg'
featimage-height: '574'
performance: true
googlescore: '100'
speedindex: '0.4 seconds'
pageweight: '210Kb'
site-is-live: true
live-url: 'https://minutestomidnight.co.uk'
permalink: '/projects/web-design/minutes-to-midnight/'
---
## Why leaving WordPress

When I started in the late 1990s, I could write HTML code with a simple text editor. Anything that could go wrong was under my hands: easy to find, easy to fix. Fast to serve, quick to download. Then, the idea of a CMS seduced me. **I'd been using WordPress since version `1.5`**. I can honestly say I know my way around it. Either on my own or with my former UI Farm team, I designed and coded custom themes and plug-ins for a large number of clients.

There won't be criticism directed at WordPress in this case study. It's a personal account of a change of direction that was beneficial to me. I will note similarities and a way to maintain a sort of continuity between then and now. The rationale behind the choice of leaving the CMS is quite simple in the end.

### 1️⃣ Regain unconditional control over the workflow

- Handling the code from top to bottom.
- Owning the visual design to its fullest.
- Writing in HTML and [Markdown](https://en.wikipedia.org/wiki/Markdown) using whichever editor.
- Knowing _what_ every single bit of the building process is doing, _why_ and _how_.

### 2️⃣ Sustainability

WordPress can serve websites with optimal performance; however, as a database-driven system it needs time to communicate with a remote server in order to return the page requested by the browser. I don't need that. Even if this is solved with an aggressive cache policy, the way it works inevitably leads to files and database swelling over time, requiring constant maintenance and a plethora of chores that I want to leave behind.

When my simple WordPress site ballooned to an unreasonable <kbd>740 MB</kbd> over a a couple of years — despite my relentless maintenance — **I wanted a change**. Following the principle of pre-rendering and decoupling[^1], I dropped both WordPress and my hosting service SiteGround, switching to [Jekyll](https://jekyllrb.com/) and [Netlify](https://netlify.com).

Jekyll takes content written either in Markdown or HTML and organized in [Liquid](https://shopify.github.io/liquid/) templates, building a static website ready to be uploaded to any web server. I set up Jekyll from scratch, avoiding pre-built themes.

## Moving the content

The change carried the possibility of rethinking the information architecture. Before importing anything from my old site, [Silvia](https://silviamaggidesign.com) helped me reorganizing and refocusing the content, putting my multi-disciplinary skills back together. I realized the importance of this stage later in the project, when I saw how convoluted was my previous navigation and how much material I decided to remove.

To avoid too many SEO issues, I used a redirection feature provided by Netlify in the form of a simple plain text `_redirects` file. It also supports wildcards:

```
https://blog.minutestomidnight.co.uk/* https://minutestomidnight.co.uk/blog/:splat 301!
```

I then [proceeded to importing](https://import.jekyllrb.com/docs/wordpress/) posts and pages. Since I decided to refactor taxonomy, I bypassed it. A basic Jekyll-based website has a simple directory tree. In my case (I'm omitting redundant and subsequent additions):

```
. 
├── 📂 _data
│    ├── 📄 nav-main.yml
│    ├── 📄 nav-social.yml
│    └── 📄 <etc>
├── 📂 _drafts
│    ├── 📝 test.md
│    └── 📝 <etc>
├── 📂 _includes
│    ├── 📄 pattern-button.md
│    ├── 📄 site-seo.html
│    └── 📄 <etc>
├── 📂 _layouts
│    ├── 📄 blog.html
│    ├── 📄 default.html
│    └── 📄 <etc>
├── 📂 _pages
│    ├── 📂 projects
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

## Liquid template language

[Liquid](https://github.com/Shopify/liquid/) is an open source template language written in Ruby. It was created by Shopify and is now used in Jekyll, Salesforce, Zendesk, 500px and more[^2]. Coming from PHP, I've found Liquid incredibly intuitive: a simpler programming language, yet powerful enough to let me build complex component that fuels the static site.

### Layouts

I built specific layouts for pages, projects, posts, archives and landing pages. The functionality is vaguely similar to templates in WordPress. I love how layouts in Jekyll *can be nested*, thus the possibility to build powerful and complex structures. Key to this are:

- The special Liquid variable `{% raw %}{{ content }}{% endraw %}`, whose value is the rendered content of the post or page being wrapped.
- The `layout` declaration at the top of each page and post.

For example, after creating the `default.html` layout containing a general structure and all the basic inclusions like header, main and footer, a second layout called `page.html` can inherit. It’s just a matter of adding a declaration in the second layout:

```yml
---
layout: default
---
```

The above instruction allows the page layout to be entirely included in the `{% raw %}{{ content }}{% endraw %}` variable of `default.html`.

### Modularity

An array of components are collected in the `_includes/` folder. They can be site-wide, such as footer and header, or embeddable modules. The latter type (i.e. images, videos etc.) is recurringly added to posts and pages. Embeddable modules are similar in usage to shortcodes[^3] in WordPress.

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

#### Automating the embed

I've been using [Alfred](https://www.alfredapp.com/) on macOS for many years. Among other things, it offers access to clipboard history and **creation of custom text snippets**. A keyword for each snippet can be set. For example, to embed my include code for adding a `<figure>` tag, I type `/figure` and then complete the missing data where `000` is present:

{% include pattern-figure.html image="/assets/images/embed-figure.gif" alt="Short animation of how I embed a figure tag" caption="Embedding a figure tag using Alfred" width="1050" height="470" %}

Like the block editor in WordPress, I associated keywords such as `/image`, `/youtube` and so on. All modules, whether simple like the above or complex like the [image gallery carousel]({{ site.url }}/projects/web-design/responsive-photogallery-carousel/), work the same way. I can also recall Alfred's snippets window with my shortcut **⌥ ⌘ C**, select the one I need and hit enter.

{% include pattern-figure.html image="/assets/images/embed-alfred.jpg" alt="Alfred's snippets recall window" caption="Alfred's snippets recall window" width="960" height="562" %}

## Markdown

Posts, notes, pages and projects are written in Markdown. Jekyll's [Kramdown](https://jekyllrb.com/docs/configuration/markdown/) implementation includes footnotes, code highlighting and more. Projects are particular content types outside the posts loop, created using [collections](https://jekyllrb.com/docs/step-by-step/09-collections/). Not too different from custom post types in WordPress.

## Design

The theme is handcrafted by applying styles to the layouts. I'm using a subset of Bootstrap's SASS source as a base, with my theme and functionality built on top of it. I'm planning to ditch Bootstrap in the near future for a custom-made micro framework written in pure traditional CSS with a utility-first classes approach. Once the SASS is compiled, the build process takes care of various optimizations. I only load the minified stylesheet on production:

```html
{% raw %}{% if jekyll.environment == "production" -%}
<link rel="stylesheet" href="/assets/css/m2m.min.css">
{% else -%}
<link rel="stylesheet" href="/assets/css/m2m.css">
{%- endif -%}{% endraw %}
```

## SEO

First, I check upon the existence of a variable called `robots`, used to exclude the page from search engine crawling.

```html
{% raw %}{%- if page.robots %}
<meta name="robots" content="{{ page.robots }}" />
{% endif %}{% endraw %}
```

The page title is rendered based on a few checks, so that it's always well structured.

```liquid
{% raw %}{%- if page.url == "/" -%}
{{ site.title | append: ' – ' }}{{ site.tagline }}
{%- elsif page.type == 'category' or page.type == 'tag' -%}
{{ page.type | capitalize }}: {{ page.title | capitalize | append: ' – ' }}{{ site.title }}
{%- else -%}
{{ page.title | append: ' – ' }}{{ site.title }}
{%- endif -%}{% endraw %}
```

I get into proper SEO territory next, by including `site-seo.html`, which is made of:

- Canonical link[^4], where I check against a page variable to see if the post has already been published elsewhere earlier:
  ```html
  {% raw %}<link rel="canonical" href="{% if page.canonical %}{{ page.canonical }}{% else %}{{ page.url |  replace:'index.html','' | absolute_url }}{% endif %}">{% endraw %}
  ```
- Meta description[^5], where I check for the presence of a `description` variable. Its fallback value is found in the `config.yml` file:
  
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

Without using Yoast or any other SEO plug-ins, several benchmarks gives optimal results with all audits fully passed.

## File management

Since I don't need any set up for Apache, PHP or MySQL, file management is extremely easy. Using GitHub as a versioning system, my local website directory is a perfect mirror of the remote repository. Again, all my images, CSS or other assets are kept together with the source code. No external database to be backed up, no extra maintenance.

## Build process
In place of Jekyll's internal build tasks, I use <kbd>Node.js</kbd>. The following is the `scripts` section in my `package.json` configuration:

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

I've recently merged the two tasks `serve` and `watch` (respectively running the website and compiling CSS at every SASS edit). With the new collective task `start` I can run a single command to manage both in parallel. By creating an alias in my `.bash_profile`, I simply type <kbd>m2mrun</kbd>.

I've also added scripts to see drafts and future posts before committing to git and deploy to production.

### CSS

1. `css-compile` renders SASS into plain CSS, which is what I use for local debugging.
2. `css-purge` removes unused CSS code using [PostCSS](https://postcss.org/).
3. `css-prefix` automatically adds vendor prefixes to non-standard CSS instructions.
4. `css-minify` creates the final minified version for production.

The above process brings my CSS from `337 KB` (including the `.css.map` file) down to `39 KB`.

### Javascript

I don't compile nor minify Javascript because I only use it for search engine and webmentions, which I never need to edit.

## Performance, accessibility and sustainability

I've been treating **performance as a design feature** for more than ten years. The complete size of the website is currently **40.4 MB**, which includes everything from source code to the images. It's a whopping `94.6%` reduction from before. 

What contributes to my Pagespeed and Lighthouse score of `100` on performance, accessibility and SEO?

- Semantic and valid structured code.
- Attention to <abbr title="Web Content Accessibility Guidelines">WCAG</abbr> accessibility requirements.
- Use of images only when strictly needed.
- Responsive images (small devices are served with specific smaller versions).
- Avoid Javascript when valid alternatives can be employed.
- Multi-platform font stacks.
- Optimization of static assets.
- A fast server.

I took care of removing files that are not needed on the live server, by adding a second `config-production.yml` which is called in my build command on Netlify. The final benchmarks:

<div class="table-responsive my-4">
  <table class="table">
    <thead>
      <tr>
        <th scope="col" class="align-top text-center">Markup</th>
        <th scope="col" class="align-top text-center">Google score</th>
        <th scope="col" class="align-top text-center">Speed index</th>
        <th scope="col" class="align-top text-center">Homepage weight</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="text-center fs-3">✓ <a href="https://validator.w3.org/nu/?doc=https://minutestomidnight.co.uk/" target="_blank" rel="noopener">valid</a></td>
        <td class="text-center fs-3"><a href="https://pagespeed.web.dev/report?url=https%3A%2F%2Fminutestomidnight.co.uk%2F" target="_blank" rel="noopener"><code>100</code></a></td>
        <td class="text-center fs-3 fw-bold"><code>0.4 sec</code></td>
        <td class="text-center fs-3"><code>{{ page.pageweight }}</code></td>
      </tr>
    </tbody>
  </table>
</div>

Accessibility benchmarks:

- ✓ **No errors** for 
<abbr title="Web Content Accessibility Guidelines">WCAG</abbr> detected on [WAVE](https://wave.webaim.org/report#/https://minutestomidnight.co.uk/).
- ✓ **`100`** on [Google Lighthouse](https://web.dev/measure/)

Sustainability notes:

Only `0.02g of CO2` is produced every time someone visits the homepage. Cleaner than `98%` of [web pages tested](https://www.websitecarbon.com/website/minutestomidnight-co-uk/ "Visit Website carbon").

## Search engine

As a static site generator, Jekyll lacks two features: a search functionality and a comment system. I solved the first by including a clever vanilla [Javascript solution](https://github.com/daviddarnes/jekyll-search-js) supported by Liquid syntax to indicize the content. A [script-free solution](/search/) using DuckDuckGo is provided.

## Integrations: Webmentions, Indieweb

After deciding to avoid third-party commenting systems, I turned to [webmentions](https://alistapart.com/article/webmentions-enabling-better-communication-on-the-internet/). An underrated and vastly ignored **W3C standard**, it's basically a _decentralized_ way to interact with other websites' posts, notes, likes and reposts[^6].

I've been out of mainstream social networks for over a year and a half, so **putting my website at the center of my online presence** seemed perfect. In a nutshell this is what I've done:

- Joined the [Indieweb](https://indieweb.org/).
- Created a structured `h-card` using [Microformats 2](http://microformats.org/wiki/microformats2) for posts, notes and pages.
- Tested my h-cards on [Indiewebify](https://indiewebify.me/).
- Linked the website to [Webmention.io](https://webmention.io/) and created [Micropub](https://indieweb.org/Micropub) and [Microsub](https://indieweb.org/Microsub) endpoints.

Even though Netlify has a free plug-in that would automatically send webmentions from my site at every new build, I prefer to rely on manual triggers using external free and open source services:

- [Telegraph](https://telegraph.p3k.io/) send webmentions from my site to others.
- [Brid.gy](https://brid.gy/) pulls webmentions to mine from certain external sites such as WordPress, Mastodon and Flickr, among many others — with the added capability to cross-post my content there. This principle is called [POSSE](https://indieweb.org/POSSE) — Publish (on your) Own Site, Syndicate Elsewhere.

{: .text-center .mt-5 }
![Webmentions on a recent blog post]({{ site.url }}/assets/images/webmention-reactions.png){: width='720' height='473' }

---

[^1]: Decoupling is the process of creating a clean separation between systems or services. By decoupling the services needed to operate a site, each component part can become easier to reason about, can be independently swapped out or upgraded, and can be designated the purview of dedicated specialists either within an organization, or as a third party.
[^2]: [https://github.com/Shopify/liquid/wiki#who-uses-liquid](https://github.com/Shopify/liquid/wiki#who-uses-liquid)
[^3]: A shortcode is akin to a shortcut to add features to your website that would typically require lots of complicated computer code and technical ability. [Read more](https://wordpress.com/support/shortcodes/).
[^4]: [https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls](https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls)
[^5]: [https://developers.google.com/search/docs/advanced/appearance/snippet?hl=en](https://developers.google.com/search/docs/advanced/appearance/snippet?hl=en)
[^6]: A Webmention is a notification that one URL links to another. For example, Alice writes an interesting post on her blog. Bob then writes a response to her post on his own site, linking back to Alice's original post. Bob's publishing software sends a Webmention to Alice notifying that her article was replied to, and Alice's software can show that reply as a comment on the original post.