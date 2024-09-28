---
title: 'A human-readable RSS feed with Jekyll'
date: '2022-05-02 10:36:05'
last_modified_at: '2022-05-02 19:00:32'
tags:
  - 'dev project'
  - 'internet'
  - 'software'
  - 'web development'
summary: 'I refactored my RSS feed using Jekyll functionalities, applying XSLT for presentation to render a human-readable XML feed.'
skillset:
  - Jekyll
  - Liquid
  - HTML
  - CSS
  - XML
  - XSLT
featimage: true
featimage-name: 'build-a-human-readable-rss-with-jekyll.jpg'
featimage-alt: Screenshot of my RSS XML feed page formatted to be readable in a browser
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

I recently stumbled on an article,[^1] where two things caught my eye: styled OPML blogrolls that can be directly imported into an RSS reader, and styled RSS feeds. I had forgotten about [XSLT](https://en.wikipedia.org/wiki/XSLT) with its potential applications, so the above examples inspired me. Also, I wasn't aware that OPML, which I’ve been using for years to import and export RSS feeds, could be styled. This prompted me to refactor my RSS feed, and give a human readable format to it, consistent with the website.

## Approach

I created a loop that could exploit the layout type rather than the content type, because I tend to add and remove collections to my site, and this is a more flexible solution. The loop iterates 20 times (my configuration value for `posts_limit`) through the resulting variable.

```liquid
{% raw %}{% assign blog = site.documents | where:"layout", "post" | sort: 'date' | reverse %}
{% for post in blog limit:site.posts_limit %}
  <item>
    [code here]
  </item>
{% endfor %}{% endraw %}
```

Then, I created an XSL file to style the feed page into a human readable format. Since I was rewriting the RSS feed from scratch, I added a few features:

{: .list-hr }
- a brief personal introduction at the top of the main feed;
- author information directly in each post, for easy contact information;
- a "reply via email" link at the end of each post, visible on any RSS reader.

<div class="warning">
  <h3>Before</h3>
  <p><img src="/assets/images/rss-before.png" alt="RSS feed before refactor" width="960" height="584"></p>
  <h3>After</h3>
  <p><img src="/assets/images/rss-after.png" alt="RSS feed after refactor" width="960" height="584"></p>
</div>

## Results

It was surprisingly easy, and I wonder why didn't I do it sooner. Since my main motivation for leaving WordPress was to take full control over my code, I should have managed the feed myself rather than relying on a Jekyll plug-in. The source code for the [RSS XML feed](https://github.com/simonesilvestroni/m2m-website/blob/main/feed.xml) and the [XLS file](https://github.com/simonesilvestroni/m2m-website/blob/main/feed.xsl) are available on Github.

[**View it in action**&nbsp;&rarr;](https://minutestomidnight.co.uk/feed.xml){: .cta }

#### Footnotes

[^1]: [*Cool Things People Do With Their Blogs*](https://brainbaking.com/post/2022/04/cool-things-people-do-with-their-blogs/) by Wouter Groeneveld.