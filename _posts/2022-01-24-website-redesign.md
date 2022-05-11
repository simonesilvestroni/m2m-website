---
title: 'Website redesign'
date: '2022-01-24'
last_modified_at: '2022-01-24 18:14:59'
categories: 
  - 'Web design'
tags:
  - web standards
  - jekyll
  - jamstack
  - netlify
  - github
  - indieweb
  - webmentions
  - web sustainability
  - small web
description: "Minutes to Midnight's new redesigned website is easier to navigate and straight to the point. Built with JAMstack on Netlify."
excerpt: "4 months after Silvia's announcement, here is Minutes to Midnight's new redesigned website. Easier to navigate and straight to the point, I finally have full control over my code and my online presence."
mention: true
mentionReplyUrl: 'https://silviamaggidesign.com/design/brand-new-website/'
mentionReplyTitle: '<em>Brand new website</em> (Silvia Maggi)'
mentionType: reply
---
## Platform

In this case, **redesign means overhaul**. While the previous version had been running on WordPress since its debut, I'm now on [JAMstack](https://jamstack.org/what-is-jamstack/). Specifically: **Jekyll** as a static site generator and **Netlify** for deployment. All the code, whether dynamic or static, is handwritten by myself. The design has been created together with Silvia Maggi. After a full re-organization of the information architecture I've also refactored most of the content, focusing on newly created **case studies**.

More technical details in the [colophon](/colophon/).

## Philosophy

### Decentralized conversations

The website is now part of [Indieweb](https://indieweb.org/), therefore it's capable of sending and receiving [webmentions](https://alistapart.com/article/webmentions-enabling-better-communication-on-the-internet/), a web standard for replying, liking and reposting other people's posts on their websites. All the info are in the [**reactions** block near the bottom](#comments)&nbsp;👇.

### Small web

These decisions are a consequence of me [leaving social media]({{ site.url }}/blog/escape-from-social-media/) 18 months ago. Being part of the [small web](https://benhoyt.com/writings/the-small-web-is-beautiful/) is way more in line with how I see the internet and communication in general.

> Most websites today are built like commercial products by professionals and marketers, optimised to draw the largest audience, generate engagement and 'convert'. But there is also a smaller, less-visible web designed by regular people to simply to share their interests and hobbies with the world. A web that is unpolished, often quirky but often also fun, creative and interesting.
> <cite>— [Parimal Satyal](https://neustadt.fr/essays/the-small-web/)</cite>

### Sustainability and performance

The fight against a bloated web is a crusade I've been part of for a long time. See [this digest from Silvia](https://silviamaggidesign.com/design-digested/biased-ai/#webwaste) about the book _Webwaste_. A weight comparison between my previous and current website shows a reduction of <kbd>94.6%</kbd>.

<div class="table-responsive my-5">
  <table class="table">
    <thead>
      <tr>
        <th scope="col" class="align-top text-center text-uppercase fw-bold">Old site (WordPress)</th>
        <th scope="col" class="align-top text-center text-uppercase fw-bold">New site</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="text-center fs-4"><code>673.5 MB</code> (files)<br>+<br><code>67.2 MB</code> (database)</td>
        <td class="text-center fs-4"><code>40.4 MB</code> (full deployment)</td>
      </tr>
    </tbody>
  </table>
</div>

The homepage is now `150 KB` uncompressed and loads in **less than half a second**. I'm in the process of being added to the [512kb club](https://512kb.club/faq).

### Accessibility

Besides being [fully validated](/colophon/#accessibility), the site doesn't have Javascript doing things that can be achieved otherwise. I don't run essential functionality that's exclusively dependent on it. The [search engine](/search/) has an HTML alternative shown directly in the page and the other script is doing webmentions. The website is fully accessible with Javascript turned off.

### Tracking and surveillance

**I don't use neither cookies nor analytics**, therefore users are not tracked when visiting or commenting this website. Even YouTube videos are served from `https://www.youtube-nocookie.com`.