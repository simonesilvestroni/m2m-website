---
title: 'Content security policy on Netlify'
date: '2022-03-30'
last_modified_at: '2022-03-30 10:48:41'
tags:
  - 'netlify'
  - 'security'
  - 'web development'
image-caption: true
description: "How I implemented a content security policy on a static website built with Jekyll, hosted on Netlify and loaded with several external embeds."
---
## What is a content security policy?

From Mozilla Developer Network:

> Content Security Policy (CSP) is an added layer of security that helps to detect and mitigate certain types of attacks, including Cross-Site Scripting (XSS) and data injection attacks. These attacks are used for everything from data theft, to site defacement, to malware distribution. 

Although using a static web site usually means you have to worry less about security, the [big picture is a bit more complicated](https://blog.sqreen.com/static-websites-security/). I embed many `<iframe>` elements due to necessity. Bandcamp, Soundcloud, Spotify and YouTube, to name them all. Some of these embeds are generating awful code and tens of third-party scripts.

I could have [sandboxed the iframes](https://www.html5rocks.com/en/tutorials/security/sandboxed-iframes/), but I wanted a more tight way to protect the entire website. Enter content security policy (CSP).

## Implementing CSP on Netlify

In the past, using WordPress, I had to work on the Apache configuration to configure a web server to return the Content-Security-Policy HTTP header. The `<meta>` element can be used to configure a policy. For example:

```html
<meta http-equiv="Content-Security-Policy"
      content="default-src 'self'; img-src https://*; child-src 'none';">
```

After the switch to Jekyll and Netlify the process is significantly simplified. I just created a specific `netlify.toml` configuration file in my repository and added the instructions. 

The tricky part was to find out all the external resources I'm pinging, including those I wasn't fully aware of. For example, webmentions are implemented through a Javascript calling `https://webmention.io`, which pulls in all the mentions including avatar images. For this specific case, in the `Content-Security-Policy` section I had to allow:

```
img-src 'self' https://webmention.io https://*.amazonaws.com;
```

The main difficulty about the aforementioned audio-visual embeds was connected to their habit of injecting inline CSS, which I decided to disallow. The fix came from forcing their iframes to print specific classes based on my inclusion method in Jekyll, and move the third-party inline CSS to my SASS theme.

### Example: Bandcamp

Bandcamp comes with a fixed dimension `iframe`, depending on a few options when choosing the embed code on their site. Once I'd decided to always use the small version of the album picture, the main difference is the object height. I have three cases:

- Single song
- 2-song EP
- Album

I turned their fixed height in two specific embed classes:

```html
<div class="iframe-bandcamp my-5 bc-single">
[...]
<div class="iframe-bandcamp my-5 bc-ep">
[...]
<div class="iframe-bandcamp my-5 bc-album">
```

Note that in Bandcamp, whenever I have more than one song, I always check "Show tracklist":

![Embed options in Bandcamp](/assets/images/bandcamp-embed-tracks.jpg){: width="960" height="630" }
*Embed options in Bandcamp*

## The code

Here is my security policy, which grants an [`A+` on benchmarks](https://securityheaders.com/?q=minutestomidnight.co.uk&followRedirects=on). As you can see, I don't allow CSS and Javascript, either external or inline, from external sources. I'm also blocking the website, through `x-frame-options`, from being embedded in an `iframe`.

```toml
[[headers]]
  for = "/*"
  [headers.values]
    X-Frame-Options = "deny"
    X-XSS-Protection = "1; mode=block"
    X-Content-Type-Options = "nosniff"
    Referrer-Policy = "no-referrer"
    Strict-Transport-Security = '''
      max-age=31536000;
      includeSubDomains;
      preload
    '''
    Content-Security-Policy = '''
      default-src 'self' https://webmention.io;
      style-src 'self';
      img-src 'self' https://webmention.io https://*.amazonaws.com;
      script-src 'self';
      frame-src https://yewtu.be/embed/ https://www.youtube-nocookie.com/embed/ https://w.soundcloud.com/player/ https://bandcamp.com/EmbeddedPlayer/
    '''
    Permissions-Policy = '''
      accelerometer=(none),
      ambient-light-sensor=(none),
      autoplay=(none),
      camera=(none),
      encrypted-media=(none),
      fullscreen=(none),
      geolocation=(none),
      gyroscope=(none),
      magnetometer=(none),
      microphone=(none),
      midi=(none),
      payment=(none),
      picture-in-picture=(none),
      speaker=(none),
      usb=(none),
      vibrate=(none),
      vr=(none)
    '''
```

Read more:

- [Mozilla developer network](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP)
- [Content Security Policy Reference](https://content-security-policy.com/) (includes a browser test)