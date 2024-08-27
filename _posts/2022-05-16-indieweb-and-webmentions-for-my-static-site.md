---
title: 'IndieWeb and webmentions for my static site'
date: '2022-05-16 12:47:30'
last_modified_at: '2024-01-08 23:05:57'
tags:
  - 'dev project'
  - 'indieweb'
  - 'internet'
  - 'web development'
skillset:
  - Microformats
  - HTML
  - Javascript
  - Jekyll
  - Liquid
summary: 'Analysing the method I used to implement IndieWeb principles and webmentions. A step-by-step process that works on a Jekyll-based static website.'
featimage: true
featimage-name: 'indieweb-and-webmentions-for-my-static-site.jpg'
featimage-alt: IndieWeb logo
featimage-width: 768
featimage-height: 384
syndication: true
syndicate:
  - name: IndieNews
    url: https://news.indieweb.org/en/
---
## Skills

<ul class="list-inline">
  {% for skill in page.skillset %}
  <li><mark>{{ skill }}</mark></li>
  {% endfor %}
</ul>

## Objectives

Two years after [Silvia](https://silviamaggidesign.com) made me discover webmentions by suggesting an *A List Apart* article by Chris Aldrich[^1], I decided to leave social media[^2] and turn my WordPress blog into a static website. Choosing not to implement a third-party commenting system, I wanted to turn to webmentions instead. A [W3C recommendation](https://www.w3.org/TR/webmention/), it’s a decentralised way to interact with other websites’ posts, enabling replies, likes, reposts and more.

## Approach

The process to implementing webmentions manually was not straightforward. Of course, now that that I have it working, it’s obvious what I was doing wrong — however, despite being love with the concept, I found confusing and off-putting the way the documentation was scattered over different places, with little consistency. I’m not criticizing the people who made this possible, but I believe that the less tech-savvy could be excluded by using webmentions because of the technical barrier[^3] — unless they use a ready-made system such as WordPress, and can therefore install some plug-ins.

> It might be time for IndieWeb to rethink principles and priorities. The current list might appeal to developers [...] but it doesn't necessarily talk to  the ones looking to satisfy the call of creativity, or those  disillusioned of social media itself. <cite>Peter Molnar</cite>

### IndieAuth

[IndieAuth](https://indieauth.com/) provides authentication for personal websites using existing social accounts. Part of the IndieWeb effort to take back control of your online identity, it requires my domain to either have a link to supported providers, or a valid [GPG key](https://en.wikipedia.org/wiki/GNU_Privacy_Guard). Since I wanted to be able to use either, I first added two `<link>` lines with a `rel="me"` parameter to the `<head>` section, pointing to my GitHub and public GPG key. Then, I added a link back to my homepage from [GitHub's profile settings](https://github.com/settings/profile).

```html
<head>
  [...]
  <link rel="me" href="https://github.com/simonesilvestroni/">
  <link rel="pgpkey authn" href="/assets/files/key.pub">
  [...]
</head>
```

![Screenshot from the IndieAuth website, where it found supported providers]({{ site.url }}/assets/images/webmentions-indieauth-1.jpg){: width="1024" height="622" }
_IndieAuth finds my two supported verified providers for authentication_

By clicking on the green button linking github.com, the authentication happens at once, while using GPG a modal window asks for verification: an encripted text block has to be signed using my private key. Once that's done, authentication is ensured.

![Screenshot of a browser window showing a modal window from IndieAuth, asking to sign an encrypted code]({{ site.url }}/assets/images/webmention-indieauth-gpg.jpg){: width="1024" height="622" }
_Request to sign an encrypted code with GPG_

![Screenshot of a browser window showing a page from IndieAuth, saying 'you successfully authenticated']({{ site.url }}/assets/images/webmention-indieauth-ok.jpg){: width="1024" height="622" }
_IndieAuth successfully authenticated_

### webmention.io

The authentication procedure needs to be done once, or whenever I'm logged out from IndieAuth. I use it to log in to [Webmention.io](https://webmention.io/), a free hosted service created by Aaron Parecki to easily receive webmentions on any web page, and a bunch of other related services. Once loggedin with IndieAuth, I have a dashboard up and running. Time to copy the code required to start accepting webmentions, again in the `<head>` section of the website.

```html
<head>
  [...]
  <link rel="webmention" href="https://webmention.io/minutestomidnight.co.uk/webmention">
  <link rel="pingback" href="https://webmention.io/minutestomidnight.co.uk/xmlrpc">
  [...]
</head>
```

### Microformats

To properly send and receive webmentions it’s necessary to add additional markup to the code, using [microformats](http://microformats.org/wiki/microformats2). They're simple class names to be added to the HTML code, so that other people’s software can use it for things like [reply](https://indieweb.org/reply-context), [cross-site comments](https://indieweb.org/comment), and more.

#### h-entry

All the necessary microformats-tagged markup must be enclosed in a block with class `h-entry`.

> [h-entry](http://microformats.org/wiki/h-entry) is the microformats2 vocabulary for marking up blog posts on web sites. It can also be used to mark-up any other episodic or time series based content.

#### h-card

An [h-card](http://microformats.org/wiki/h-card) is for marking up people and organizations, often used on home pages and individual blog posts. This is my h-card for single pages:

```html
{% raw %}<div class="h-entry">
  <span class="p-author h-card">
    <img class="u-photo" src="{{ site.url }}/assets/images/favicons/favicon.svg" alt="Minutes to Midnight's avatar" width="24" height="24">
    <a class="p-name" href="{{ site.url }}/about/" rel="author">Simone Silvestroni ({{ site.title }})</a>
    <span class="p-note">{{ site.description }}</span>
    <a rel="me" class="u-url u-uid" href="{{ site.url }}{{ page.url }}">Permalink</a>
  </span>
</div>{% endraw %}
```

I have a tweaked version that I use on blog posts, containing the time it's published and a few more information:

```html
{% raw %}<article class="h-entry">
  <header>
    <time class="dt-published" datetime="{{ page.date | date_to_xmlschema }}" itemprop="dateCreated">
      <a rel="me" class="u-url u-uid" href="{{ site.url }}{{ page.url }}" title="Permalink">{{ page.date | date: "%-d %B %Y" }}</a>
    </time>
    <h1 class="p-name">{{ page.title }}</h1>
    <p class="p-summary">{{ page.summary }}</p>
    <span class="p-author h-card">
      <img class="u-photo" src="{{ site.url }}/assets/images/minutes-to-midnight-portrait.jpg" alt="Simone Silvestroni's avatar" width="28" height="28"> by <a class="p-name" href="{{ site.url }}/about/" rel="author">Simone Silvestroni</a>
      {% if page.replyto %} <span>in reply to <a href="{{ page.replyto }}" class="u-in-reply-to">{{ page.replytouser }}</a></span>{% endif -%}
    </span>
  </header>
  [...]
</article>{% endraw %}
```

A list of microformats classes I've been using in my pages and posts:

{: .list-hr-group }
- <mark><code>p-author</code></mark> signals that’s me who’s writing the content.
- <mark><code>p-name</code></mark> is the equivalent of a heading, also used for names.
- <mark><code>u-photo</code></mark> marks my avatar.
- <mark><code>u-url</code></mark> is the current page’s permalink.
- <mark><code>dt-published</code></mark> is the time of publication.
- <mark><code>u-in-reply-to</code></mark> marks someone else's article that I'm [replying to](https://indieweb.org/reply) with a webmention.
- <mark><code>u-like-of</code></mark> for [like types](https://indieweb.org/like) of webmentions.[^5]
- <mark><code>p-category</code></mark> for categories and tags.
- <mark><code>p-summary</code></mark> for the post excerpt.
- <mark><code>e-content</code></mark> wraps the main content of the post.
- <mark><code>u-syndication</code></mark> for links to other websites, if I [cross-post](https://indieweb.org/POSSE).

#### IndieWebify

[IndieWebify](https://indiewebify.me/) is a useful service that allows anyone to test IndieAuth implementations and validate h-card and h-entry before starting to send webmentions. Had I discovered it earlier, it would have saved me a few hours of debugging.

> Without indieWebify I don’t think I would have been able to even get started implementing any of this stuff. <cite>David Yates</cite>

## Using notes to send webmentions

I chose to only support webmentions in the form of *replies* and *likes*, and avoid turning my personal website into a social media feed, which is too noise for me. To send replies and likes I’ve been using a different type of post, called _notes_, a [common format](https://indieweb.org/note). My notes layout is a shrinked version of a blog post. It only features an `<article>` element containing the same microformats, with a logic condition to check for the presence of either a `replyto` or a `likeof` parameter.

I can quickly create a note, fill-in the required original URL of the post and the name of the person I'm interacting with, and write my response. In case I’m responding to someone who mentioned me from their blog, I also quote my original post, so that my comment would also appear on my site as a reply to the previous mention. Advantages of using a note to send a reply webmention:

{: .list-hr }
- Quick workflow.
- Feels like a _separate entity_ — which is how I perceive comments on the web.
- Contained. Since the block tagged with <mark><code>e-content</code></mark> is what’s going to be fetched and printed on someone’s comment section, I like it to be straight to the point and as brief as possible. When I see webmentions that are basically complete long posts, I feel like they miss the point altogether.

## Sending webmentions

Even though I could automate sending a webmention, I prefer to do it manually. [Telegraph](https://telegraph.p3k.io/), another free service built by Aaron Parecki, does the job. Logging in works the same as the other IndieWeb services, via IndieAuth. The dashboard has two tabs: one for finding links with potential webmention endpoints in a post, another for sending webmentions if I know both the source and the target URLs.

![Telegraph dashboard showing the two tabs Find Links and Send Webmention](/assets/images/telegraph-dashboard.png){: width="720" height="217" }

## Receiving webmentions

To receive webmentions I had initially implemented the popular [`webmentions.js`](https://github.com/PlaidWeb/webmention.js). It pulled data from `webmention.io`, and added any results in the bottom section of blog posts, delimited by `<div id="webmentions"></div>`. The minified javascript was conditionally loaded in posts where webmentions could be received. Even though I did for a while, I later stopped collecting backfeed reactions and comments as webmentions bridged from Mastodon, due to privacy concerns.

### Get notified of new webmentions

I monitor incoming webmentions using an RSS feed provided by `webmention.io`. The [*Mentions Feed* section](https://webmention.io/settings) has two links. The one at the bottom, complete with my token, is an Atom feed URL which I added to my RSS reader. Arguably the simplest solution, it fits with my workflow.

### Why I'm not showing webmentions

I subsequently dropped `webmentions.js`, which removed all comments from my posts. I still get notified of new mentions, and read them in my feed reader. Moreover, my site can still send them — however, I wanted to stop perpetuating any ego-boosting behaviour on the internet (number of replies, likes, reposts). In my opinion, these things don't add valuable insights to a blog post. On the other hand, _private communication_ does. I don't mind how other people show my replies on their websites, but I prefer to keep mine quiet. The decision allowed me to completely remove javascript from the codebase, which was something I wanted to achieve.

<aside class="warning">
  <h3>Useful articles</h3>
  <ul class="list-hr">
    <li><a href="https://aaronparecki.com/2018/06/30/11/your-first-webmention"><em>Sending your First Webmention from Scratch</em></a>, by Aaron Parecki</li>
    <li><a href="https://blog.omgmog.net/post/adding-support-for-webmentions/"><em>Adding support for Webmentions</em></a>, by Max Glenister</li>
    <li><a href="https://keithjgrant.com/posts/2019/02/adding-webmention-support-to-a-static-site/">A<em>dding Webmention Support to a Static Site</em></a>, by Keith J. Grant</li>
    <li><a href="https://davidyat.es/2019/06/24/indieweb/"><em>Untangling the IndieWeb</em></a>, by David Yates</li>
    <li><a href="https://petermolnar.net/article/old-web-new-web-indie-web/"><em>Old Web, New Web, Indie Web</em></a>, by Peter Molnar</li>
    <li><a href="https://vincentp.me/articles/2018/11/14/20-00/"><em>Implementing the IndieWeb on a static website</em></a>, by Vincent Pickering</li>
    <li><a href="https://brainbaking.com/post/2021/05/beyond-webmention-io/"><em>Host your own webmention receiver</em></a>, by Wouter Groeneveld</li>
  </ul>
</aside>

## Results

Webmentions[^4] pushed me towards the concept of a [small web](https://benhoyt.com/writings/the-small-web-is-beautiful/), free from corporate interference. It matches the way I approach the internet and communication in general, and despite a few implementation hiccups I'm happy to be part of a larger independent community.

#### Footnotes

[^1]: [_Webmentions: Enabling Better Communication on the Internet_](https://alistapart.com/article/webmentions-enabling-better-communication-on-the-internet/), published 19 July 2018.
[^2]: See my article [_Escape from social media_]({{ site.url }}/blog/escape-from-social-media/) and the follow-up [_Life after social networks_]({{ site.url }}/blog/life-after-social-networks/).
[^3]: See also [this post by David Yates](https://davidyat.es/2019/06/24/indieweb/#implementation-pain-points).
[^4]: A list of tools and people who are using webmentions can be [found on the IndieWeb wiki](https://indieweb.org/Webmention).
[^5]: There are other types of webmention: [repost](https://indieweb.org/repost), [RSVP](https://indieweb.org/rsvp), [bookmark](https://indieweb.org/bookmark), [follow](https://indieweb.org/follow) — but I don’t use them.