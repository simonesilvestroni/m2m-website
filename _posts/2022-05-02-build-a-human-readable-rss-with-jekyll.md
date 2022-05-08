---
title: 'A human-readable RSS feed with Jekyll'
date: '2022-05-02 10:36:05'
last_modified_at: '2022-05-02 19:00:32'
categories: 
  - 'Web design'
tags: 
  - rss
  - jekyll
  - liquid
  - xml
  - xslt
  - popular
description: 'How I refactored my RSS feed from scratch using Jekyll functionalities and applying XSLT for presentation to render a human-readable XML feed.'
excerpt: 'I love <abbr title="RDF Site Summary">RSS</abbr>. However, by using a third-party plugin to automatically generate the feed, I didn’t pay attention to how it could be improved. An occasional discussion on Mastodon prompted me to a change.'
---
A few days ago, while reading my Mastodon timeline, I stumbled on an [article](https://brainbaking.com/post/2022/04/cool-things-people-do-with-their-blogs/) by Wouter Groeneveld, titled *Cool Things People Do With Their Blogs*. Two things caught my eye: 

- [styled OPML blogrolls](https://rubenerd.com/omake.opml) that can be imported into an RSS reader, by Ruben Schade;
- [styled RSS feeds](http://interconnected.org/home/feed) to better explain what a web feed is, by Matt Webb.

I’d forgotten about [XSLT](https://en.wikipedia.org/wiki/XSLT) and its potential applications and what I saw in the above examples were inspiring to me. Also, I kind of ignored how [OPML](http://opml.org/spec2.opml), which I’ve been using as a format to backup and export/import my RSS feeds, can be styled and used as a human-readable experience on the web.

After a few more clicks, I landed on the OPML [blogroll on Maya's site](https://maya.land/blogroll.opml). As I stated on Mastodon, probably the best and most useful blogroll I’ve ever seen. Not only they explain why each link might be interesting to anyone visiting, it’s also beautifully formatted and capable of being imported in my RSS reader.

This prompted me to apply styles to my RSS feed and give a human readable format to it. It was surprisingly easy, and I wonder why didn't I do it sooner. I’ve been using the widespread feed plugin for Jekyll, though since my main motivation for [leaving WordPress]({{ site.url }}/blog/loops-transitions-identity/) was to take full control over my code, I should have managed the feed myself rather than relying on a third party.

## Using Jekyll functionality

Since I wanted to have both blog posts and projects — a Jekyll collection — I created a loop that would exploit the layout type rather than the content type, iterating 20 times (my configuration value for `posts_limit`) through the resulting variable:

```liquid
{% raw %}{% assign projects = site.documents | where:"layout", "project" %}
{% assign blog = site.documents | where:"layout", "post" %}
{% assign posts = projects | concat: blog | sort: 'date' | reverse %}
  {% for post in posts limit:site.posts_limit %}{% endraw %}
    <item>
      [code here]
    </item>
```

Finally, I created an XSL file to style the feed page into a human readable format, following the aforementioned example by Matt Webb. Since I rewrote the RSS feed from scratch, I also decided to add new features to the `.xsl` file:

- an introduction to who I am at the top of the main feed;
- useful author information directly in each post, for easy contact information;
- a "reply via email" link at the end of each post, visible on any RSS reader.

{% include pattern-figure.html image="/assets/images/rss-feed-head.png" alt="Author contact info" caption="Author contact info at the top of a post" width="720" height="286" %}

{% include pattern-figure.html image="/assets/images/rss-feed-footer.png" alt="A reply link at the bottom of each post" caption="A reply link at the bottom of each post" width="720" height="274" %}

The CSS file attached to the XSL presentation is so small that I didn't bother to minify it. The sum of 3 files are less than 5 KB.

## Before & after

Here's a link to my new human-readable [RSS feed]({{ site.url }}/feed.xml). Below, a visual comparison of the before and after.

{% include pattern-figure.html image="/assets/images/rss-before.png" alt="RSS feed before refactor" caption="RSS feed before refactor" width="821" height="960" %}

{% include pattern-figure.html image="/assets/images/rss-after.png" alt="RSS feed after refactor" caption="RSS feed after refactor" width="821" height="960" %}

## Source code

{: .list-unstyled .ps-0 }
- 📄 [RSS XML feed on Github ↗︎](https://github.com/minutes2midnight/m2m-website/blob/master/feed.xml)
- 📄 [XSL file on GitHub ↗︎](https://github.com/minutes2midnight/m2m-website/blob/master/feed.xsl)

## Also posted on

{: .list-unstyled .ps-0 }
- 🔄 <a href="https://news.indieweb.org/en" class="u-syndication">IndieNews</a>
- 🔄 <a href="https://indieweb.social/web/@m2m/108234066278671729" class="u-syndication">Mastodon</a>
