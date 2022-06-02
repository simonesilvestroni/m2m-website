---
title: 'Indieweb and webmentions for my static site'
tagline: false
date: '2022-05-16 12:47:30'
last_modified_at: '2022-05-16 12:47:34'
categories:
  - 'Web design'
tags:
  - 'front-end development'
  - jekyll
  - indieweb
  - webmentions
  - decentralization
description: 'A brief analysis on how I have implemented Indieweb principles and webmentions on my static Jekyll-based website, using webmentions.io, bridgy and Javascript.'
excerpt: 'My method to implement Indieweb principles and add webmentions support to my Jekyll site is probably the laziest of all. It enabled a decentralized reply system, as well as allowing reposts and likes.'
syndication: true
syndicate:
  - name: IndieNews
    url: https://news.indieweb.org/en
  - name: Mastodon
    url: https://indieweb.social/@m2m/108312049281191498
toc: true
---
The first time I’ve found about webmentions was when [Silvia](https://silviamaggidesign.com) suggested an article by [Chris Aldrich](https://boffosocko.com/) on *A List Apart*[^2]. His article also brought the discovery of [Indieweb](https://indieweb.org/) and the concept of a [small web](https://benhoyt.com/writings/the-small-web-is-beautiful/), free from the corporate vision. It perfectly fit with the way I see the internet and communication in general.

A couple of years later, after I’d decided to leave social media[^1] and turn my WordPress blog into a static website, I chose not to implement a third-party commenting system. Instead, I went back to consider webmentions. A [W3C standard](https://www.w3.org/TR/webmention/), it’s a *decentralized* way to interact with other websites’ posts enabling replies, likes, reposts and more.

> A Webmention is a notification that one URL links to another. For example, Alice writes an interesting post on her blog. Bob then writes a response to her post on his own site, linking back to Alice’s original post. Bob’s publishing software sends a Webmention to Alice notifying that her article was replied to, and Alice’s software can show that reply as a comment on the original post.

A list of tools and people who are using webmentions can be [found on the IndieWeb wiki](https://indieweb.org/Webmention).

## Implementing webmentions

I tried implementing webmentions through a once popular [plug-in](https://github.com/aarongustafson/jekyll-webmention_io), but it never worked properly — probably because since the author has stopped using Jekyll it hasn't been maintained. I had decided to do it manually and the process was **not straightforward**. Now that it’s been successfully implemented, I see where I was doing things the wrong way, but still this got me thinking. I guess it's because I have problems with how sometimes hardcore developers document their code: I was *totally in love with the concept*, yet the information was not clear and scattered all over the place, which I found confusing and off-putting.

For transparency, I’m not criticizing the people who made this possible. Yet, I believe that many people, and not just the less tech-savvy, would be excluded by using webmentions because of the technical barrier[^3] — unless they use WordPress and can therefore [install a plug-in](https://wordpress.org/plugins/webmention/).

> It might be time for IndieWeb to rethink principles and priorities. The current list might appeal to developers, or people deeply emerged  in utilizing social media silos, looking to ease their workflow, or  their fears of losing their content, but it doesn't necessarily talk to  the ones looking to satisfy the call of creativity, or those  disillusioned of social media itself. <cite>— Peter Molnar</cite>

The following step-by-step process works on a Jekyll-based website. For Hugo users [check out this alternative](https://github.com/wgroeneveld/go-jamming).

### Webmention.io and IndieAuth

[Webmention.io](https://webmention.io/) is a free service software project created by [Aaron Parecki](http://aaronparecki.com/). To log in I chose [IndieAuth](https://indieauth.com/), which provides authentication for personal websites using existing social accounts.

> IndieAuth.com is part of the IndieWeb movement to take back control of your online identity. Instead of logging in to websites as "you on Twitter" or "you on Facebook", you should be able to log in as just "you". We should not be relying on Twitter or Facebook to provide our authenticated identities, we should be able to use our own domain names to log in to sites everywhere.

IndieAuth required `minutestomidnight.co.uk` to have a link to providers such as GitHub:

```html
<!-- Anywhere in the homepage <body> -->
<div class="h-entry">
  [...]
  <a rel="me" href="https://github.com/minutes2midnight/">Github</a>
  [...]
</div>
```

It’s possible to do the same with a `<link>` tag in the `<head>`, which would be invisible in the page. After checking that my GitHub account had a link back to my homepage in the [profile settings](https://github.com/settings/profile), I entered the domain URL <kbd>https://minutestomidnight.co.uk</kbd> in webmention.io, which returned a confirmation screen. Note: the GPG method was added later.

{% include pattern-figure.html image="/assets/images/indieauth.jpeg" alt="IndieAuth screenshot after adding the GitHub link" caption="IndieAuth screenshot after adding the GitHub link" width="600" height="430" %}

After clicking the provider green button, I signed-in to GitHub to complete the authentication. This needed to be done once, or whenever I'm logged out from GitHub. Webmention.io dashboard was now up and running. Time to copy the code required to start accepting webmentions.

```html
<link rel="webmention" href="https://webmention.io/minutestomidnight.co.uk/webmention" />
<link rel="pingback" href="https://webmention.io/minutestomidnight.co.uk/xmlrpc" />
```

I’ve added the above in an include file named `site-head.html` ([source](https://github.com/minutes2midnight/m2m-website/blob/master/_includes/site-head.html)) which contains a block of code from the DOCTYPE declaration to `</head>`.

### Microformats

To properly send and receive webmentions it’s necessary to markup the content using [microformats2](http://microformats.org/wiki/microformats2).

> Other humans can already understand your profile information and the  things you post on your site. By adding a few simple class names to your HTML, other people’s software can understand it and use it for things  like [reply contexts](https://indieweb.org/reply-context), [cross-site comments](https://indieweb.org/comment), [event RSVPs](https://indieweb.org/rsvp), and more.

#### h-card

An [h-card](http://microformats.org/wiki/h-card) is for marking up people and organizations, often used on home pages and individual blog posts. I have created two h-cards on my website, one for the homepage and a slightly different one for blog posts. As an example, here’s the one included in my homepage:

```html
<!-- Anywhere in the <body> -->
<div class="h-entry">
  [...]
  {% raw %}<div class="visually-hidden">
    <div class="p-author h-card">
      <img class="u-photo" src="{{ site.url }}/assets/images/minutestomidnight-avatar-uphoto.png" alt="{{ site.title }}" width="48" height="48">
      <a class="p-name" href="{{ site.url }}" rel="author"><strong>{{ site.author.name }}</strong></a>
      <p class="p-note">{{ site.description }}</p>
      <p class="p-org">{{ site.title }}</p>
      <p class="u-email"><a href="mailto:{{ site.author.email }}">{{ site.author.email }}</a></p>
      <p class="p-locality">Milan</p>
      <p class="p-country-name">Italy</p>
    </div>
    <a class="u-url" href="{{ site.url }}{{ page.url }}">{{ site.url }}{{ page.url }}</a>
    <a rel="me" href="https://github.com/minutes2midnight/">Github</a>
    <a rel="me" href="https://www.linkedin.com/in/minutes2mid/">LinkedIn</a>
    <a rel="me" href="https://minutestomidnight.bandcamp.com/">Bandcamp</a>
    <a rel="me" href="https://soundcloud.com/minutes2mid">Soundcloud</a>
    <a rel="me" href="https://open.spotify.com/artist/250igOmtd9HCpGyXDWUcl9?si=d9t8bLC2QfG8iT1R3y9CAw">Spotify</a>
    <a rel="me" href="https://www.youtube.com/channel/UCXO3ZbalCLwCZwHk_UkDBHg/">YouTube</a>
    <a rel="me" href="https://www.flickr.com/photos/minutes2midnight/">Flickr</a>
    <a rel="me" href="https://indieweb.social/@m2m">Mastodon</a>
    <a rel="me" href="https://oreganodangereux.wordpress.com">WordPress (Italian)</a>
    <a rel="me" href="https://minutesto00.wordpress.com">WordPress</a>
    <a rel="me" href="https://minutestomidnight.medium.com/">Medium</a>
  </div>{% endraw %}
  [...]
</div>
```

The h-card is wrapped in a `div` that’s hidden in the page but it’s machine-readable. Briefly:

- The <kbd>h-card</kbd> contains all the author information, with data mostly populated from Jekyll’s `config.yml`.
  - <kbd>p-author</kbd> signals that’s me who’s writing the content.
  - <kbd>p-name</kbd> is the equivalent of a heading, in this case it's also the name of the person or organization.
  - <kbd>u-photo</kbd> marks my avatar.

- <kbd>u-url</kbd> is the current page’s permalink.
- A bunch of <kbd>rel="me"</kbd> links, including the GitHub URL previously used to authenticate to IndieAuth.

Everything else is self-explanatory. The result of my h-card in a parser:

{% include pattern-figure.html image="/assets/images/hcard.png" alt="My homepage h-card as seen by Indiewebify" caption="My homepage h-card as seen by Indiewebify" width="408" height="500" %}

I had decided to have a modular h-card in pages and posts because I wanted to take care of all the authoral parts needed for machine readability, include it wherever needed and avoid cluttering the code. I also wanted to be able to show or hide these code bits on the page.

#### h-entry

The h-card, as well as all the other necessary microformats-tagged markup, must be enclosed in a block tagged[^4] as <kbd>h-entry</kbd>.

> [h-entry](http://microformats.org/wiki/h-entry) is the microformats2 vocabulary for marking up blog posts on web sites. It can also be used to mark-up any other episodic or time series based content. <cite>— Indieweb</cite>

Content sections that needed microformats tags:

- <kbd>dt-published</kbd> for the date tag `<time>`.
- <kbd>p-category</kbd> for categories and tags.
- <kbd>p-summary</kbd> for the post/page excerpt.
- <kbd>e-content</kbd> wraps the main content of the post/page.
- <kbd>u-syndication</kbd> for links to other websites where I [cross-post](https://indieweb.org/POSSE).
- <kbd>u-in-reply-to</kbd> for [reply](https://indieweb.org/reply) types of webmentions.
- <kbd>u-like-of</kbd> for [like](https://indieweb.org/like) types of webmentions.
- <kbd>u-repost-of</kbd> for [repost](https://indieweb.org/repost) types of webmentions.

There are other types of webmention — [RSVP](https://indieweb.org/rsvp), [bookmark](https://indieweb.org/bookmark), [follow](https://indieweb.org/follow) — but I don’t use them. Actually, **I only use replies and likes**.

### Indiewebify.me

[Indiewebify](https://indiewebify.me/) is a very well-done service that allows anyone to test IndieAuth implementations and validate h-card and h-entry before starting to send webmentions. It was pivotal to my successful implementation. Alas, I had discovered it late in the process: had it been more prominent in the documentation, it would have saved me a few hours of debugging.

> Without indiewebify I don’t think I would have been able to even get started implementing any of this stuff. <cite>— David Yates</cite>

This is how I applied microformats classes to the post layout:

```html
<!-- 1️⃣ Contains all the other microformats-enabled parts -->
<article class="h-entry">

  <!-- 2️⃣ Post category -->
  <span class="p-category">[...]</span>

  <!-- 3️⃣ Main heading -->
  <h1 class="p-name">[...]</h1>

  <!-- 4️⃣ Post excerpt -->
  <p class="p-summary">[...]</p>

  <!-- 5️⃣ At this point the post layout has a conditional block
  for webmentions, loaded if the post Front Matter has a `mention`
  value set to true. I'll go back to this in the next chapter. -->

  <!-- 6️⃣ Post date -->
  <time class="dt-published">[...]</time>
  
  <!-- 7️⃣ hcard, hidden -->
  <span class="visually-hidden">
    <span class="p-author h-card">
      <img class="u-photo" src="https://minutestomidnight.co.uk/assets/images/minutestomidnight-avatar-uphoto.png" alt="Minutes to Midnight's avatar" width="48" height="48">
      <a class="p-name" href="https://minutestomidnight.co.uk" rel="author"><strong>Simone Silvestroni</strong></a>
    </span>
    <a class="u-url u-uid" href="https://minutestomidnight.co.uk/blog/build-a-human-readable-rss-with-jekyll/" title="Permalink">Permalink: <em>A human-readable RSS feed with Jekyll</em></a>
    <time class="dt-published" datetime="2022-05-02T10:36:05+02:00" itemprop="dateCreated">2 May 2022</time>
    <data class="p-org" value="Minutes to Midnight"></data>
    <data class="u-email" rel="me" value="mailto:contact@minutestomidnight.co.uk"></data>
    <data rel="me" value="https://minutestomidnight.bandcamp.com/"></data>
    <data rel="me" value="https://github.com/minutes2midnight/"></data>
    <data rel="me" value="https://indieweb.social/@m2m"></data>
    [... other rel="me" URLs]    
  </span>
  
  <!-- 8️⃣ The written content of the post -->
  <div class="e-content">
    <p>[...]</p>
  </div>

  <!-- 9️⃣ In case of cross-posting, put here the external link(s) -->
  <a class="u-syndication" href="[...]">[...]</a>
  
  <!-- 🔟 Post tags -->
  <a class="p-category" href="[...]">[...]</a>
  
</article>
```

{: .m2m-bg-alpha .border .p-4 }
🚨 **Note**: the order in which these tags are added to the code — as long as they all are inside the <kbd>h-entry</kbd> — is irrelevant.

The following is a screenshot — cut to shorten the content — of a blog post parsed and validated by Indiewebify.

{% include pattern-figure.html image="/assets/images/indiewebify-post-validation.png" alt="Indiewebify validation for a blog post" caption="Indiewebify validation for a blog post" width="427" height="750" %}

### Comments as webmentions

As stated earlier, I've only been using webmentions in the form of *replies* and *likes*. The Indieweb doesn't force anyone to adhere to a specific set of behaviors, so I chose to avoid turning my personal website into a social media feed. It's okay for whomever does that: I initially wanted to achieve the same goal, only to realize later that’s too much noise for me. I left centralized silos for several reasons and the cluttered unreadable interface was one of them.

#### Notes

Even though I can use my blog posts to reply or like other people’s posts — as I’ve done [here](https://minutestomidnight.co.uk/blog/life-after-social-networks/) and [here](https://minutestomidnight.co.uk/blog/escape-from-social-media/) — I’ve recently decided to employ a **second type of layout**: notes. A common format in the Indieweb, this is how they’re defined:

> A [note](https://indieweb.org/note) is a post that is typically short unstructured plain text, written and posted quickly, that has its own permalink page.

My note layout is a shrinked version of the post layout. No Liquid logic, just an `<article class="h-entry">` containing a subset of microformats: time, hcard and content. Advantages of using a note to send a reply webmention:

- **Fast to write**.
- Set as a Jekyll collection and excluded from both sitemap and navigation, **it feels like a separate entity**. Which is how I see comments on the web.
- **Short**. Since the block tagged with <kbd>e-content</kbd> is what’s going to be fetched and printed on someone’s comment section, I like it to be straight to the point and as brief as possible. When I see webmentions that are basically complete long posts, I feel like they miss the point altogether.

When I start writing a note, I manually quote the person I’m replying to, link their name to their post and add `u-in-reply-to`. In case I’m responding to someone who mentioned me from their blog, I also quote my original post, so that my comment would also appear on my site as a reply to the previous mention. This is how I get a working comment thread.

A live example in my [post about automation](https://minutestomidnight.co.uk/blog/automation-for-my-blog-publishing-workflow/#comments):

{% include pattern-figure.html image="/assets/images/webmention-note-ex.png" alt="A comment thread made of webmentions" caption="A comment thread made of webmentions" width="500" height="327" %}

The permalink on my name leads to the [single note](https://minutestomidnight.co.uk/note/2022-05-12-12-10-44/), and although the URLs are stripped in the rendered webmention, they're present in the source code:

```markdown
{% raw %}[@wouter](https://brainbaking.com/notes/2022/05/11h17m44s06/){: .u-in-reply-to } I have now updated my [original post]({{ site.url }}/blog/automation-for-my-blog-publishing-workflow/) and printed the code from the shell [...]{% endraw %}
```

Both mine and Wouter’s site will receive a webmention containing what I wrote in the `e-content` section of the note. 

### Send webmentions

I have two methods of sending webmentions:

- Automatically after every deploy, using a [Netlify plug-in](https://github.com/CodeFoodPixels/netlify-plugin-webmentions#readme). On each build, it checks the latest entry in my feed — posts and projects — and sends webmentions if detected.
- Manually using [Telegraph](https://telegraph.p3k.io/). Another free service built by Aaron Parecki, Telegraph does a great job.

Logging into Telegraph works the same as the other Indieweb services, it only needs my website to be correctly configured for IndieAuth. The dashboard has two tabs: one for finding links with potential webmention endpoints in a post, another for sending webmentions if I know both the source and the target URLs.

{% include pattern-figure.html image="/assets/images/telegraph-dashboard.png" alt="Telegraph dashboard showing the latest webmention I sent" caption="Telegraph dashboard showing the latest webmention I sent" width="550" height="294" %}

### Pull webmentions

To receive webmentions I have simply implemented the popular [`webmentions.js`](https://github.com/PlaidWeb/webmention.js) by [Fluffy](https://beesbuzz.biz/). It pulls data from webmention.io, adding the results in a section of my website. The minified Javascript file is only loaded in posts where webmentions can be received.

I have an inclusion called [`pattern-responses.html`](https://github.com/minutes2midnight/m2m-website/blob/master/_includes/pattern-responses.html) where my comments code resides: the block of code `<div id="webmentions"></div>` at the bottom gets populated by the script in case webmentions are received.

To collect reactions from Mastodon, I connected my Fediverse account to [Brid.gy](https://brid.gy/). It backfeeds likes and comments to `webmention.io`. WordPress and Flickr accounts were also added to Brid.gy. I can post a photo in my website and syndicate to Flickr while also backfeeding likes and comments from Flickr back to my site.

### Notifications

I monitor incoming webmentions using the RSS feed provided by `webmention.io`. The *Mentions Feed* section in the [settings](https://webmention.io/settings) has two links. The bottom one, complete with my webmention.io token, is an Atom feed URL which I added to my RSS reeder.

I tried other venues to get webmention notifications, but I needed [Max Glenister](https://indieweb.social/@m2m/108288248425263775) to show me the simplest solution.

## Future improvements

- I'd like to stop relying on a third-party service and especially Javascript, because it's making comments not accessible if scripts are disabled and this makes me cringe. An alternative could be writing something in Ruby or trying Netlify functions.
- Based on a fruitful [debate on Mastodon](https://indieweb.social/web/@wouter@chat.brainbaking.com/108284121055089843), I think I'll be removing avatars, likes and reposts from the comment section.
- Since I started configuring [micropub](https://indieweb.org/Micropub), I might want to use it for reply notes using one of the [online clients](https://indieweb.org/Micropub/Clients). Not sure, not urgent.

## Useful articles

{: .list-group .list-group-flush .ps-0 }
- {: .list-group-item .ps-0 } 🔗 [Sending your First Webmention from Scratch ↗︎](https://aaronparecki.com/2018/06/30/11/your-first-webmention){: .m2m-link } by Aaron Parecki
- {: .list-group-item .ps-0 } 🔗 [Adding support for Webmentions ↗︎](https://blog.omgmog.net/post/adding-support-for-webmentions/){: .m2m-link } by Max Glenister
- {: .list-group-item .ps-0 } 🔗 [Adding Webmention Support to a Static Site ↗︎](https://keithjgrant.com/posts/2019/02/adding-webmention-support-to-a-static-site/){: .m2m-link } by Keith J. Grant
- {: .list-group-item .ps-0 } 🔗 [Untangling the IndieWeb ↗︎](https://davidyat.es/2019/06/24/indieweb/){: .m2m-link } by David Yates
- {: .list-group-item .ps-0 } 🔗 [Old Web, New Web, Indie Web ↗︎](https://petermolnar.net/article/old-web-new-web-indie-web/){: .m2m-link } by Peter Molnar
- {: .list-group-item .ps-0 } 🔗 [Implementing the Indieweb on a static website ↗︎](https://vincentp.me/articles/2018/11/14/20-00/){: .m2m-link } by Vincent Pickering
- {: .list-group-item .ps-0 } 🔗 [Host your own webmention receiver ↗︎](https://brainbaking.com/post/2021/05/beyond-webmention-io/){: .m2m-link } by Wouter Groeneveld

---

[^1]: See my article [Escape from social media]({{ site.url }}/blog/escape-from-social-media/) and the follow-up [Life after social networks]({{ site.url }}/blog/life-after-social-networks/).
[^2]: [Webmentions: Enabling Better Communication on the Internet](https://alistapart.com/article/webmentions-enabling-better-communication-on-the-internet/), published on *A List Apart* on July 19, 2018.
[^3]: See also: [https://davidyat.es/2019/06/24/indieweb/#implementation-pain-points](https://davidyat.es/2019/06/24/indieweb/#implementation-pain-points).
[^4]: When I refer to *tagged* in this context I mean applying an HTML class.