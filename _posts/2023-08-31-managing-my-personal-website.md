---
title: Managing my personal website
date: '2023-08-31 11:36:56'
last_modified_at: '2023-08-31 23:39:09'
tags:
  - 'degrowth'
  - 'indieweb'
  - 'internet'
  - 'personal'
  - 'sustainability'
  - 'web development'
  - 'workflow'
description: 'Last post in my ‘degrowth’ series: a few points around my concept of a personal and sustainable website.'
---
I've been expressing myself on a personal website since 2002, writing about what I do&nbsp;—&nbsp;or want to do, along with personal thoughts. Two years ago it's gone back to its static HTML and vanilla CSS roots, perfectly reflecting my attitude towards designing and developing for the web. I've always regarded the value of web performance as paramount, thus it was only natural that I kept my site [as fast as I could]({{ site.url }}/credits/#site), _reducing its footprint_ to the very minimum. It's not just about how fast a page loads, but also the weight of the data, along with its back-and-forth between client and server.

There is no database. I don't use images unless necessary. The ones I use are thoroughly optimised, reduced in size as much as possible. Usually, they're never larger than a certain width, exported (lossy) at 72dpi, and stripped of metadata. They're properly described through alt tags, same as I do on the Fediverse (this is still a work in progress). Due to my vehement opposition to ads and trackers, plus a zero interest for web statistics, the site has no Javascript and [no third-party calls](https://themarkup.org/blacklight?url=minutestomidnight.co.uk).

Despite a bunch of available solutions, I chose not to have comments. The way to discuss posts is via email, through a link available at the bottom of each post. Even if the site is capable of sending and receiving [webmentions](https://indieweb.org/Webmention), _they're not shown publicly_. I grew distant from likes, comments, reposts, perceiving them as ego-boosting practices. My feeling is that they're personal, hence why I keep them to myself.

Finally, I stopped sending out newsletters a while ago, deleting the Mailchimp account as a consequence. I'm not against them, however there's been a deluge in recent years. I prefer to offer a full-text [RSS feed]({{ site.url }}/feed.xml) for the latest 20 posts, reducing the back-and-forth of "content" on the internet.