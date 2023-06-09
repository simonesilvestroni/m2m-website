---
title: 'A human-readable RSS feed with Jekyll'
date: '2022-05-02 10:36:05'
last_modified_at: '2022-05-02 19:00:32'
tags: 
  - 'jekyll'
  - 'liquid'
  - 'rss'
  - 'web development'
  - 'xml'
  - 'xslt'
description: 'How I refactored my RSS feed from scratch using Jekyll functionalities, and applying XSLT for presentation to render a human-readable XML feed.'
syndication: true
syndicate:
  - name: IndieNews
    url: https://news.indieweb.org/en
  - name: Mastodon
    url: https://indieweb.social/web/@m2m/108234066278671729
  - name: Hacker News
    url: https://news.ycombinator.com/item?id=31241877
---
A few days ago, while reading my Mastodon timeline, I stumbled on an [article by Wouter Groeneveld](https://brainbaking.com/post/2022/04/cool-things-people-do-with-their-blogs/), titled *Cool Things People Do With Their Blogs*. Two things caught my eye: 

- [styled OPML blogrolls](https://rubenerd.com/omake.opml) that can be imported into an RSS reader, by Ruben Schade;
- [styled RSS feeds](https://interconnected.org/home/feed) to better explain what a web feed is, by Matt Webb.

I’d forgotten about [XSLT](https://en.wikipedia.org/wiki/XSLT) with its potential applications, so the above examples inspired me. Also, I didn't know that [OPML](http://opml.org/spec2.opml), which I’ve been using to import and export my RSS feeds, could be styled and used as a human-readable experience on the web.

After a few more clicks, I landed on the OPML [blogroll on Maya's site](https://maya.land/blogroll.opml) — likely the best and most useful blogroll I’ve ever seen. Not only they explain why each link might be interesting to anyone visiting, it’s also beautifully formatted and capable of being imported in my RSS reader.

This prompted me to apply styles to my RSS feed and give a human readable format to it. It was surprisingly easy, and I wonder why didn't I do it sooner. Since my main motivation for [leaving WordPress]({{ site.url }}/blog/loops-transitions-identity/) was to take full control over my code, I should have managed the feed myself rather than relying on a widespread Jekyll plug-in.

## Using Jekyll functionality

I wanted to have both blog posts and projects (a Jekyll collection), hence, I created a loop that would exploit the layout type rather than the content type, iterating 20 times (my configuration value for `posts_limit`) through the resulting variable:

```liquid
{% raw %}{% assign projects = site.documents | where:"layout", "project" %}
{% assign blog = site.documents | where:"layout", "post" %}
{% assign posts = projects | concat: blog | sort: 'date' | reverse %}
  {% for post in posts limit:site.posts_limit %}{% endraw %}
    <item>
      [code here]
    </item>
```

Finally, I created an XSL file to style the feed page into a human readable format, following the aforementioned example. Since I was rewriting the RSS feed from scratch, I added new features to the `.xsl` file:

- an introduction to who I am at the top of the main feed;
- useful author information directly in each post, for easy contact information;
- a "reply via email" link at the end of each post, visible on any RSS reader.

![Author contact info](/assets/images/rss-feed-head.png){: width="720" height="286" }
*Author contact info visible in a feed*

![A reply link at the bottom of each post](/assets/images/rss-feed-footer.png){: width="720" height="274" }
*A reply via email link is provided at the bottom of each post*

The weight of all the required files amounts to less than `5 KB`.

## Before & after

Here's a link to my new human-readable [RSS feed]({{ site.url }}/feed.xml). Below, a visual comparison of the before and after.

![RSS feed before refactor](/assets/images/rss-before.png){: width="821" height="960" }
*RSS feed before refactor*

![RSS feed after refactor](/assets/images/rss-after.png){: width="821" height="960" }
*RSS feed after refactor*

## Source code

{: .list-unstyled .ps-0 }
- [RSS XML feed on Github](https://github.com/simonesilvestroni/m2m-website/blob/main/feed.xml)
- [XSL file on Github](https://github.com/simonesilvestroni/m2m-website/blob/main/feed.xsl)
