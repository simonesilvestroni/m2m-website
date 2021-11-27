---
title: 'Loops, transitions, identity'
date: '2021-09-08'
last_modified_at: '2021-11-12 23:06:19'
categories: 
  - 'Web design'
tags:
  - github
  - indieweb
  - jekyll
  - web design
  - web standards
  - case study
description: "Following a process to recalibrate my self-identity after leaving social media, I’m going back to the roots and leave WordPress for Jekyll, joining IndieWeb."
excerpt: "Following a process to recalibrate my self-identity after leaving social media, I’m going back to the roots, leaving WordPress for Jekyll and joining the IndieWeb."
---
<p class="lead">{{ page.excerpt }}</p>

Milan is the city where I spent 15 years before emigrating to the UK. It’s where I kickstarted my work life, met great people that are still firmly in my life, and became an adult. I find it slightly funny how, over the last couple of years, I’ve been studying to — hopefully — go back to an audio videogame career, ending up moving back to where it all started.

I’m fairly used to loops in life. Being a digital polymath, I spent my life [working](https://www.linkedin.com/in/minutes2mid/){:target="_blank" rel="noopener"} in three distinct industries: **publishing**, **web design**, **audio**. Recently, I wished I could be all those things, openly, instead of being forced to present myself as one. This brings me to what I’ve been doing over the past couple of months.

## Back to the roots

Following a process to recalibrate my self-identity after [leaving social media](/escape-from-social-media/), I came to know a whole lot of the web that I didn’t suspect still existed. People who happily maintain a blog, who keep up to date with other websites through newsletters and [RSS](https://aboutfeeds.com/){:target="_blank" rel="noopener"} like I do, instead of following crap on `insert social media name here`. Authors researching the best way to get out of the _silo-like_ online mentality that dominated the last decade.

Instead of going on complaining about how the web has been hijacked by advertising and surveillance capitalism, I decided to do something. Together with [Silvia](https://silviamaggidesign.com/){:target="_blank" rel="noopener"}, we started a complete refactor of our online presence.

## A new old model

During the 2000s we run our web shop, later to be absorbed by a larger company. We were happy to focus on UX, design, and turning those processes into full-fledged developed websites. Our tools were: semantic HTML, CSS, [W3C’s WCAG](https://www.w3.org/WAI/WCAG2AAA-Conformance){:target="_blank" rel="noopener"} and [section 508](https://section508.gov/){:target="_blank" rel="noopener"}. Accessibility and usability were great **assets in our skillset**. In fact, we took pride about getting full compliance qualifications for all of our deliveries.

Despite the occasional hero header, _content was still king_, ruling over aesthetics. **Web standards** were at the absolute forefront. Later, something else happened when the whole industry took a different road. After discovering how vast the “old-school” niche is, now it’s the perfect time to go back to that model.

## Complete control

After removing social media from my equation, the next move is to **get out of WordPress**. It’s been a platform of choice for a long time, yet something never appeased me. Its whole ecosystem, the plug-ins, the not-so-great performance, the swelling database over time. The annoying process of setting up my machine in order to run it locally… _Ugh_.

Lack of control is the key: the fact that it’s been _built by someone else_. The code isn’t mine, I can’t fully grasp what’s going on at all times — even when I develop my own themes or plug-ins from scratch, it’s not enough.

## Static Web Generators

I’ve been toying for a while with the idea of redesigning my website with a [static web generator](https://jamstack.org/generators/){:target="_blank" rel="noopener"}: now it’s the time. Last month I’ve developed and delivered a super-nice landing page. My first paid job as a web designer, in years, and all I had to use was [Jekyll](https://jekyllrb.com/){:target="_blank" rel="noopener"}, Bootstrap and GitHub. No clunky local environment, **no hosting fees** — GitHub Pages is free, including a custom mapped domain. A smooth sailing from beginning to end. 100% benchmark on [Pagespeed](https://developers.google.com/speed/pagespeed/insights/){:target="_blank" rel="noopener"} on both desktop and mobile, and less than 400 milliseconds in loading time.

That was it. Despite still having a full year of hosting with SiteGround, before a hefty renewal is due, the die was cast. Silvia was unhappy too with her current customization of WordPress, and shared all my irritations with the platform. We decided to start with her online portfolio and blog.

## HTML, Markdown, CSS, Javascript, Git

This is the core, and this is what we’re using. It feels essential, stripped down to the core, super **fast and efficient**. GitHub is the control version, which will serve as a deployment platform towards [Netlify](https://netlify.com/){:target="_blank" rel="noopener"}, which will be our (free) hosting.

We have complete control of the codebase, the design, the information architecture: every single detail is in our hands. Every benchmark will be testing our ability to run a fast and **sustainable website**. No useless obligatory Unsplash-driven featured images, pretending to attract people’s attention while slowing down every page. Full focus on the content. Typography, rhythm, speed, access to the information, clear navigation.

The ease of updating isn’t secondary. Local site being a perfect mirror of production, adding a new post is just creating a new markdown file. Write, save, push to the Git repository and that’s it. We could even edit stuff online directly on GitHub if we want. No SQL backups needed.

## No surveillance, no comments

We won’t be showing annoying cookie messages, because our websites won’t spy on anyone. **No Google Analytics**, no Tag Manager, nothing at all. And no comment system. We discussed the opportunity to implement a clever system called [Staticman](https://staticman.net/){:target="_blank" rel="noopener"}, but ultimately opted out. Not because of its setup process, but because I stumbled upon several professional bloggers using a fantastic simpler approach. Instead of public comments, a simple button to “reply with email” will do. Looks like a perfect new-old way. Each post will have a `mailto` link and the subject pre-set to the post’s title. **Start a conversation** — remember it?

I love when blogs present this kind of interaction, and the idea of being back to the feeling of “it’s me and the author” is electrifying. As Robin Rendle aptly wrote:

> There were no ads, no one could slow down your feed with third party scripts, it had a good baseline of typographic standards and, most of all, it was _quiet_. There were no comments, no likes or retweets. Just the writer’s thoughts and you.
> 
> <cite>— [_How to read the internet_](https://www.robinrendle.com/notes/how-to-read-the-internet/){:target="_blank" rel="noopener"}</cite>

## Decentralize and own your data

Once our new websites will be online, we’re going to join the [IndieWeb](https://indieweb.org/){:target="_blank" rel="noopener"} movement. I’ll implement [webmentions](https://alistapart.com/article/webmentions-enabling-better-communication-on-the-internet/){:target="_blank" rel="noopener"}, a tech I ignored for too long, that Silvia brought to my attention. We’ll post on our websites first, then [syndicate elsewhere](https://indieweb.org/POSSE){:target="_blank" rel="noopener"}.

As they say in their homepage, IndieWeb is a people-focused alternative to the _corporate web_:

> A community of individual personal websites, connected by simple standards, based on the principles of owning your domain, using it as your primary identity, to publish on your own site, and own your data.

**Decentralizing the net** has been an aim for many people interested in taking it back to its foundation. Including the original creator, Tim Berners-Lee, who founded a company, [Solid](https://en.wikipedia.org/wiki/Solid_){:target="_blank" rel="noopener"}, to specifically fight the way private companies hijacked the web.

> Berners-Lee felt that the Internet was in need of repair and conceived the Solid project as a first step to fix it, as a way to give individual users full control over the usage of their data.

Silvia’s [new website is ready](https://silviamaggidesign.com){:target="_blank" rel="noopener"}. Mine will follow suit. Onward and upward.
