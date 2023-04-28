---
title: 'Indieweb and webmentions for my static site'
date: '2022-05-16 12:47:30'
last_modified_at: '2022-05-16 12:47:34'
tags:
  - 'indieweb'
  - 'jekyll'
  - 'small web'
  - 'web development'
  - 'webmentions'
description: 'A brief analysis on how I have implemented Indieweb principles and webmentions on my static Jekyll-based website, using the laziest method available.'
syndication: true
syndicate:
  - name: IndieNews
    url: https://news.indieweb.org/en
  - name: Mastodon
    url: https://indieweb.social/@m2m/108312049281191498
---
The first time I’ve found about webmentions was when [Silvia](https://silviamaggidesign.com) suggested an article by Chris Aldrich on *A List Apart*[^1]. It also made me discover the [Indieweb](https://indieweb.org/), and the concept of a [small web](https://benhoyt.com/writings/the-small-web-is-beautiful/) free from the corporate vision. It perfectly matched the way I saw the internet and communication in general.

A couple of years later, after I’d decided to leave social media[^2] and turn my WordPress blog into a static website, I chose not to implement a third-party commenting system. Instead, I went back to consider webmentions. A [W3C recommendation](https://www.w3.org/TR/webmention/), it’s a *decentralised* way to interact with other websites’ posts, enabling replies, likes, reposts and more.

> A Webmention is a notification that one URL links to another. For example, Alice writes an interesting post on her blog. Bob then writes a response to her post on his own site, linking back to Alice’s original post. Bob’s publishing software sends a Webmention to Alice notifying that her article was replied to, and Alice’s software can show that reply as a comment on the original post.

A list of tools and people who are using webmentions can be [found on the IndieWeb wiki](https://indieweb.org/Webmention).

## Implementation

I first tried a [once popular Jekyll plug-in](https://github.com/aarongustafson/jekyll-webmention_io), which never worked properly, likely because the author has stopped any maintenance. The process to implementing webmentions manually was _not straightforward_. 

Of course, now that it works I see what I was doing wrong, but it still got me thinking. I suppose it's because I have issues with how sometimes hardcore developers document their code. I was *totally in love with the concept*, yet the information was scattered all over the place, with very little consistency, which I found confusing and off-putting.

For transparency, I’m not criticizing the people who made this possible, but I believe that the less tech-savvy would be excluded by using webmentions because of the technical barrier[^3] — unless they use some ready-made system such as WordPress, and can therefore [install a plug-in](https://wordpress.org/plugins/webmention/).

> It might be time for IndieWeb to rethink principles and priorities. The current list might appeal to developers [...] but it doesn't necessarily talk to  the ones looking to satisfy the call of creativity, or those  disillusioned of social media itself. <cite>— Peter Molnar</cite>

The following step-by-step process works on a Jekyll-based website. For Hugo users [check out this alternative](https://github.com/wgroeneveld/go-jamming).

### Webmention.io and IndieAuth

[Webmention.io](https://webmention.io/) is a free service created by [Aaron Parecki](http://aaronparecki.com/). To log in I chose [IndieAuth](https://indieauth.com/), which provides authentication for personal websites using existing social accounts, and is part of the IndieWeb effort to take back control of your online identity:

> Instead of logging in to websites as "you on Twitter" or "you on Facebook", you should be able to log in as just "you". We should not be relying on Twitter or Facebook to provide our authenticated identities, we should be able to use our own domain names to log in to sites everywhere.

IndieAuth required my domain to either have a link to providers such as Github, or a working GPG key. I chose the latter:

```html
<!-- In the <head> section -->
<link rel="pgpkey" href="/assets/files/key.pub">
```

Note: to use GitHub, it’s necessary to add a `<link rel="me">` with the profile URL in the `<head>` section, which also would result invisible in the page. It's required for the GitHub account to have a link back to the homepage URL in the [profile settings](https://github.com/settings/profile).

{% include pattern-figure.html image="/assets/images/indieauth.png" alt="IndieAuth login screenshot showing a working PGP key has been found" width="720" height="452" %}

After clicking the green button, I signed the provided encrypted text with my private GPG key, which logged me in as _me_. This needed to be done once, or whenever I'm logged out from IndieAuth. Webmention.io dashboard was now up and running. Time to copy the code required to start accepting webmentions.

The following code is included in the [default layout](https://github.com/simonesilvestroni/m2m-website/blob/main/_layouts/default.html):

```html
<link rel="webmention" href="https://webmention.io/minutestomidnight.co.uk/webmention" />
<link rel="pingback" href="https://webmention.io/minutestomidnight.co.uk/xmlrpc" />
```

### Microformats

To properly send and receive webmentions it’s necessary to markup the content using [microformats2](http://microformats.org/wiki/microformats2).

> Other humans can already understand your profile information and the  things you post on your site. By adding a few simple class names to your HTML, other people’s software can understand it and use it for things  like [reply contexts](https://indieweb.org/reply-context), [cross-site comments](https://indieweb.org/comment), [event RSVPs](https://indieweb.org/rsvp), and more.

#### h-card

An [h-card](http://microformats.org/wiki/h-card) is for marking up people and organizations, often used on home pages and individual blog posts. It has to be contained within a DOM element with a class `h-entry`. The following is the h-card I have on pages:

```html
{% raw %}<span class="p-author h-card">
  <img class="u-photo" src="{{ site.url }}/assets/images/favicons/favicon.svg" alt="Minutes to Midnight's avatar" width="24" height="24">
  <a class="p-name" href="{{ site.url }}/about/" rel="author">Simone Silvestroni ({{ site.title }})</a>
  <span class="p-note">{{ site.description }}</span>
  <a rel="me" class="u-url u-uid" href="{{ site.url }}{{ page.url }}">Permalink</a>
</span>{% endraw %}
```

Briefly:

- <kbd>h-card</kbd> contains all the author information, with data pulled from Jekyll’s `config.yml`.
- <kbd>p-author</kbd> signals that’s me who’s writing the content.
- <kbd>p-name</kbd> is the equivalent of a heading, in this case it's also the name of the person or organization.
- <kbd>u-photo</kbd> marks my avatar.
- <kbd>u-url</kbd> is the current page’s permalink.

The `h-card` used in posts is slightly different, as it also contains information about the publish date (class <kbd>dt-published</kbd>), and it's placed in the article `header` section:

```html
<header>
  {% raw %}<h1 class="p-name">{{ page.title }}</h1>
  <time class="dt-published dim" datetime="{{ page.date | date_to_xmlschema }}" itemprop="dateCreated">{{ page.date | date: "%-d %B %Y" }}</time>&nbsp;&middot;&nbsp;<span class="p-author h-card">By <img class="u-photo" src="{{ site.url }}/assets/images/simonesilvestroni-uphoto.png" alt="Simone Silvestroni's avatar" width="28" height="28"> <a class="p-name" href="{{ site.url }}/about/" rel="author">Simone Silvestroni</a></span>&nbsp;&middot;&nbsp;<a rel="me" class="u-url u-uid" href="{{ site.url }}{{ page.url }}">Permalink</a>{% endraw %}
</header>
```

#### h-entry

The h-card, as well as all the other necessary microformats-tagged markup, must be enclosed in a block with class <kbd>h-entry</kbd>.

> [h-entry](http://microformats.org/wiki/h-entry) is the microformats2 vocabulary for marking up blog posts on web sites. It can also be used to mark-up any other episodic or time series based content.

Content sections that needed microformats tags:

- <kbd>p-category</kbd> for categories and tags
- <kbd>p-summary</kbd> for the post excerpt
- <kbd>e-content</kbd> wraps the main content of the post
- <kbd>u-syndication</kbd> for links to other websites, if I [cross-post](https://indieweb.org/POSSE)
- <kbd>u-in-reply-to</kbd> for [reply](https://indieweb.org/reply) types of webmentions
- <kbd>u-like-of</kbd> for [like](https://indieweb.org/like) types of webmentions

There are other types of webmention: [repost](https://indieweb.org/repost), [RSVP](https://indieweb.org/rsvp), [bookmark](https://indieweb.org/bookmark), [follow](https://indieweb.org/follow) — but I don’t use them.

### Indiewebify.me

[Indiewebify](https://indiewebify.me/) is a useful service that allows anyone to test IndieAuth implementations and validate h-card and h-entry before starting to send webmentions. Had I discovered it earlier, it would have saved me a few hours of debugging.

> Without indiewebify I don’t think I would have been able to even get started implementing any of this stuff. <cite>— David Yates</cite>

The following is a screenshot — cut to shorten the content — of a blog post parsed and validated by Indiewebify.

{% include pattern-figure.html image="/assets/images/indiewebify-post-validation.png" alt="Indiewebify validation for a blog post" caption="Indiewebify validation for a blog post" width="720" height="1245" %}

## Notes to comment, reply and like

The Indieweb doesn't enforce a specific set of behaviours, so I chose to only support webmentions in the form of *replies* and *likes*, and avoid turning my personal website into a social media feed. It's okay for whomever does that: I initially wanted to achieve the same goal, only to realize later that’s too much noise for me. I left centralised silos for several reasons and the cluttered unreadable interface was one of them.

Even though I could have used my blog posts to reply or like other people’s entries, I’ve recently decided to employ a second type of layout: _notes_. A [common format in the Indieweb](https://indieweb.org/note), this is how it's defined:

> A note is a post that is typically short unstructured plain text, written and posted quickly, that has its own permalink page.

My **note layout** is a shrinked version of the post layout. Since I've added the fundamental class `h-entry` to the body, notes only features an `<article>` element containing the same `<header>` section as mentioned earlier. Inside the article I have a Liquid logic condition to check the post's Front Matter for the presence of either a <kbd>replyto</kbd> or a <kbd>likeof</kbd>.

```Liquid
{% raw %}{%- if page.replyto %}
<div class="e-content"><span class="p-name">{{ content }}</span></div>
{% elsif page.likeof %}
<p class="e-content"><a href="{{ page.likeof }}" class="u-like-of">{{ page.likeoftitle }}</a> by <code>{{ page.likeofuser }}</code></p>
{% endif -%}{% endraw %}
```

This type of layout allows me to quickly create a note, fill-in the required data, such as the post's original URL and the name of the person I'm interacting with. 

If I'm replying and/or commenting, everything I write in the note .md file will replace the `{% raw %}{{ content }}{% endraw %}` block featured in the layout.

Advantages of using a note to send a reply webmention:

- Fast to write.
- Set as a [Jekyll collection](https://jekyllrb.com/docs/collections/), and excluded from both sitemap and navigation, it feels like a _separate entity_ — which is how I perceive comments on the web.
- Short. Since the block tagged with <kbd>e-content</kbd> is what’s going to be fetched and printed on someone’s comment section, I like it to be straight to the point and as brief as possible. When I see webmentions that are basically complete long posts, I feel like they miss the point altogether.

### Threads (sort of)

In case I’m responding to someone who mentioned me from their blog, I also quote my original post, so that my comment would also appear on my site as a reply to the previous mention. It doesn't feature indentations or anything fancy, but so far it's been manageable.

## Send webmentions

Even though I could automaticall send a webmention using a [Netlify plug-in](https://github.com/CodeFoodPixels/netlify-plugin-webmentions#readme) after each deploy, I prefer to do it manually. [Telegraph](https://telegraph.p3k.io/) is another free service built by Aaron Parecki, which does a great job.

Logging into Telegraph works the same as the other Indieweb services, it only needs my website to be correctly configured for IndieAuth. The dashboard has two tabs: one for finding links with potential webmention endpoints in a post, another for sending webmentions if I know both the source and the target URLs.

{% include pattern-figure.html image="/assets/images/telegraph-dashboard.png" alt="Telegraph dashboard showing the two tabs Find Links and Send Webmention" width="720" height="217" %}

## Pull webmentions

To receive webmentions I've implemented the popular [`webmentions.js`](https://github.com/PlaidWeb/webmention.js) by [Fluffy](https://beesbuzz.biz/). It pulls data from `webmention.io`, adding the results in a section of my website. The minified Javascript file is conditionally loaded in posts where webmentions can be received.

I have an included file where my comments code resides: `<div id="webmentions"></div>` at the bottom gets populated by the script in case webmentions are received.

Even though I did for a while, I stopped collecting backfeed reactions and comments as webmentions from Mastodon, due to privacy concerns.

## Notifications

I monitor incoming webmentions using an RSS feed provided by `webmention.io`. The [*Mentions Feed* section](https://webmention.io/settings) has two links. The one at the bottom, complete with my token, is an Atom feed URL which I added to my RSS reader.

I tried other venues to get webmention notifications, but I needed [Max Glenister](https://indieweb.social/@omgmog/108288194277555303) to show me the simplest solution.

## Future improvements

I'd like to stop relying on a third-party service and especially Javascript, because it's making comments not accessible if scripts are disabled and this makes me cringe. An alternative could be writing something in Ruby or trying Netlify functions.

<div class="notice">
  <h3>Useful articles</h3>
  <ul>
    <li><a href="https://aaronparecki.com/2018/06/30/11/your-first-webmention">Sending your First Webmention from Scratch </a> by Aaron Parecki</li>
    <li><a href="https://blog.omgmog.net/post/adding-support-for-webmentions/">Adding support for Webmentions</a> by Max Glenister</li>
    <li><a href="https://keithjgrant.com/posts/2019/02/adding-webmention-support-to-a-static-site/">Adding Webmention Support to a Static Site</a> by Keith J. Grant</li>
    <li><a href="https://davidyat.es/2019/06/24/indieweb/">Untangling the IndieWeb</a> by David Yates</li>
    <li><a href="https://petermolnar.net/article/old-web-new-web-indie-web/">Old Web, New Web, Indie Web</a> by Peter Molnar</li>
    <li><a href="https://vincentp.me/articles/2018/11/14/20-00/">Implementing the Indieweb on a static website</a> by Vincent Pickering</li>
    <li><a href="https://brainbaking.com/post/2021/05/beyond-webmention-io/">Host your own webmention receiver</a> by Wouter Groeneveld</li>
  </ul>

</div>

***

[^1]: [Webmentions: Enabling Better Communication on the Internet](https://alistapart.com/article/webmentions-enabling-better-communication-on-the-internet/), published on *A List Apart* on July 19, 2018.
[^2]: See my article [Escape from social media]({{ site.url }}/blog/escape-from-social-media/) and the follow-up [Life after social networks]({{ site.url }}/blog/life-after-social-networks/).
[^3]: See also: [https://davidyat.es/2019/06/24/indieweb/#implementation-pain-points](https://davidyat.es/2019/06/24/indieweb/#implementation-pain-points).