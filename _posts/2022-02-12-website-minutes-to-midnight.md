---
title: 'Website redesign for Minutes to Midnight'
date: '2022-02-12'
last_modified_at: '2024-01-08 23:05:48'
tags:
  - 'dev project'
  - 'indieweb'
  - 'internet'
  - 'web development'
skillset:
  - Jekyll
  - Liquid
  - Markdown
  - HTML
  - CSS
  - Netlify
  - Git
  - Bash
description: 'My new website eclipses the previous on <abbr title="Information Architecture">IA</abbr>, performance, sustainability and ease of maintenance.'
featimage: true
featimage-name: 'website-redesign-for-minutes-to-midnight.jpg'
featimage-alt: Screenshot of the homepage for Minutes to Midnight’s website
featimage-width: 1024
featimage-height: 622
---
## Objectives

I had been using WordPress since version 1.5, and while it can serve websites with optimal performance, it requires constant maintenance as well as security audits, it's still a database-driven system that needs time to communicate with a remote server in order to return a page, and files and databases inevitably swell over time. When my WordPress-driven site ballooned to an unreasonable 740 MB, despite my relentless care, I wanted a change. My goals for the redesigned website were: 

1. get full control of design and code;
1. light-weight with top-notch performance;
1. sustainable and accessible;
1. easy to manage;

## Approach

Following the principle of pre-rendering and decoupling,[^1] I dropped both WordPress and my hosting service SiteGround, switching to [Jekyll](https://jekyllrb.com/) and [Netlify](https://netlify.com). Jekyll takes content written either in Markdown or HTML, organises it using [Liquid templates](https://shopify.github.io/liquid/)[^2], and builds a static website ready to be uploaded to any web server. I wasn't interested in pre-built themes, so I designed the whole thing from scratch, iterating until I was happy.

### Information architecture

The change carried the possibility of rethinking the structure. Before importing anything from my old site, [Silvia helped me](https://silviamaggidesign.com) reorganising and refocusing the content, putting my multi-disciplinary skills back together. I realised the importance of this stage later in the project, when I saw how convoluted my previous navigation was, and how much material I started to remove. After importing posts and pages from WordPress, I set up redirects to avoid SEO issues.

### Controlling the (dynamic) source

In 1998, with a text editor and HTML written from scratch, it was clear how everything was under my control. I wanted to return to a similar feeling, where I could handle the code from top to bottom, own the visual design, write again in HTML (and [markdown](https://en.wikipedia.org/wiki/Markdown)).

After several years working with PHP-based dynamic websites, I wasn't ready to ditch the ability to run logic routines to reach complex results. Jekyll comes with Liquid, an open source template language written in Ruby. Created by Shopify, it's also used by Salesforce, Zendesk, 500px and more. To me, it was intuitive and powerful enough to build intricate structures, such as layouts, templates, and inclusions.

#### Modularity

I wrote an array of reusable components, ready to be included in posts and pages. They are embeddable modules that work in a similar fashion as shortcodes[^3] in WordPress, and they can be automated, for example [through a launcher such as Alfred on macOS]({{ site.url }}/blog/automation-for-my-blog-publishing-workflow/).

#### Build process
I run build tasks through [Bash](https://www.gnu.org/software/bash/), using appropriate aliases in my `bash_profile` for quick localhost live preview, with optional draft and future posts.

## Results

### Accessibility

The redesigned website, thoroughly tested with text-only browsers, it's compliant with <abbr title="Web Content Accessibility Guidelines">WCAG</abbr> AAA guidelines, and has a [WAVE accessibility rank](https://webaim.org/projects/million/lookup?domain=minutestomidnight.co.uk) of #7,280 out of 1,000,000.

### Performance and sustainability

As a long time advocate for [performance as a design feature](https://web.archive.org/web/20130717022229/http://uifarm.co.uk/responsive-design-framework-performance/), I reduced the codebase from the previous ~800 MB to 13.8MB (including images). The homepage now loads in less than a second, and weighs less than 70 KB. Beside running the site from a green hosting provider, I followed common sense and a few principles:

{: .list-hr }
- Semantic and valid code, with a lean DOM structure.
- Use of images only when strictly needed, implementation of responsive images (small devices are served with specific smaller versions), and relentless optimisation of visual assets.
- No Javascript when valid alternatives can be employed, especially no bloated scripts to serve ads or track people.
- Multi-platform font stacks combined with optimised custom typography assets (my 3 local fonts weigh 36 KB cumulatively).

| Page weight | Pagespeed score | Loading time |
| ----------- | --------------- | ------------ |
| 63.9 KB     | 100             | 0.64 seconds |

[**Check detailed benchmarks**&nbsp;&rarr;](http://localhost:4000/colophon/){: .cta .highlight }

### Easy maintenance

Since I don't need to setup and care for Apache, PHP or MySQL, file management and backup are extremely easy. Using git as a versioning system, my local source code — including images and other binary assets — is a mirror of the remote repository, with no extra maintenance required. As a bonus, the transition made me save money, as I'm not paying a dedicated hosting service anymore.

## Skills

<ul class="list-inline">
  {% for skill in page.skillset %}
  <li><mark>{{ skill }}</mark></li>
  {% endfor %}
</ul>

[^1]: Decoupling is the process of creating a clean separation between systems or services. By decoupling the services needed to operate a site, each component part can become easier to reason about, can be independently swapped out or upgraded, and can be designated the purview of dedicated specialists either within an organization, or as a third party.
[^2]: [Shopify: _Who Uses Liquid?_](https://github.com/Shopify/liquid/wiki#who-uses-liquid)
[^3]: A shortcode is akin to a shortcut to add features to your website that would typically require lots of complicated computer code and technical ability. [Read more](https://wordpress.com/support/shortcodes/).
[^4]: [https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls](https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls)
[^5]: [https://developers.google.com/search/docs/advanced/appearance/snippet?hl=en](https://developers.google.com/search/docs/advanced/appearance/snippet?hl=en)
[^6]: A Webmention is a notification that one URL links to another. For example, Alice writes an interesting post on her blog. Bob then writes a response to her post on his own site, linking back to Alice's original post. Bob's publishing software sends a Webmention to Alice notifying that her article was replied to, and Alice's software can show that reply as a comment on the original post.