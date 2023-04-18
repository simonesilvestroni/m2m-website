---
layout: page
title: 'Credits'
date: '2023-01-14 13:49:31'
last_modified_at: '2023-04-07 22:18:30'
description: 'All about this website: tools, benchmarks, a note about copyright and a thank you to people that inspired me.'
permalink: '/credits/'
---
I handcrafted the site from scratch using [`Jekyll` v4.2.2](https://jekyllrb.com/).

Daily maintenance and content updates are achieved through a mix of templates in Sublime Text, Typora and Alfred macros. Before downgrading my OS, I had devised [a method using Apple's Shortcuts](https://simonesilvestroni.com/blog/automation-for-my-blog-publishing-workflow/) that could be used with Monterey and later versions.

## Code

- `Markdown` [extended](https://www.markdownguide.org/extended-syntax/) and good old `HTML`
- Plain `CSS` based on [Simple CSS](https://simplecss.org)
- Vanilla `Javascript` for [the search module](https://github.com/daviddarnes/jekyll-search-js) and [webmentions](https://github.com/fluffy-critter/webmention)
- Implemented a [content security policy](https://securityheaders.com/?q=https%3A%2F%2Fminutestomidnight.co.uk%2F)
- Versioned on [GitHub](https://github.com/simonesilvestroni/m2m-website) and hosted on [Netlify](https://www.netlify.com)

## UI

- Inline `SVG` for logos and icons
- [`WebP` images](https://simonesilvestroni.com/blog/implementing-webp-images-in-jekyll/) and fallbacks optimised with [ImageOptim](https://imageoptim.com)
- System stacks typography: [Geometric Humanist](https://github.com/system-fonts/modern-font-stacks#geometric-humanist) is used on everything except for monospaced (ui-monospace), little serif interventions (Georgia and its fallbacks) and [Rounded Sans](https://github.com/system-fonts/modern-font-stacks#rounded-sans) for labels

## Sustainability

{: .list-hr }
- Since I wiped out bloated frameworks, the entire source code is `1.1 MB`.
- Only [0.01g of CO<sub>2</sub> is produced every time someone visits the homepage](https://www.websitecarbon.com/website/minutestomidnight-co-uk/), which is cleaner than 99% of web pages tested. 
- Runs on sustainable energy and does not request third-party resources, except for the blog posts, which are calling `webmention.io` to render webmentions. 
- [Scores 100 on Ecograder](https://ecograder.com/report/CYFdKg62wGIsfEWJoa8uLAIE) and it's featured on [Lowwwcarbon](https://lowwwcarbon.com/showcase/).
- The homepage loads in <mark>0.4 seconds</mark> and weighs <mark>45.9 KB</mark> (uncompressed). 
- Proud member of the [512kb club](https://512kb.club), the [1Mb club](https://1mb.club/) and the [darktheme.club](https://darktheme.club).

## Accessibility

- Despite the website resulting compliant with <abbr title="Web Content Accessibility Guidelines">WCAG</abbr> guidelines based on multiple tests, I know it’s still incomplete.
- The page content is fully accessible with Javascript turned off. The dynamic [search engine](/search/) has an HTML alternative provided in the same page, based on DuckDuckGo.

{: .notice }
[**More about my ethical choices**](/manifesto/)&nbsp;→

## Copyright

The text content of this website is [Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/) (CC BY-SA 4.0). It means you are free to share — copy and redistribute the material in any medium or format, adapt — remix, transform, and build upon the material for any purpose, even commercially. You must give appropriate credit, provide a link to the license, and indicate if changes were made.

Everything connected to sound and music in this website is copyrighted.

## Trademark

Minutes to Midnight<small>&trade;</small> is a registered trademark in the UK and worldwide. The logo, in all its variants is use trademark for the trading name of Simone Silvestroni.

## Thanks

An unordered list of people who inspired improvements and helped me find a better way to build this website:

- [Silvia Maggi](https://silviamaggidesign.com)
- [Luke Harris](https://www.lkhrs.com)
- [Zinzy Waleson Geene](https://zinzy.website)
- [Chris Wiegman](https://chriswiegman.com)
- [Wouter Groeneveld](https://brainbaking.com)
- [Brad Taunt](https://bt.ht)
- [Ru Singh](https://rusingh.com)
- [Kev Quirk](https://kevquirk.com)
- [Ruben Schade](https://rubenerd.com/)