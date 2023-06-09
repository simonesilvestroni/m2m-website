---
title: 'Ungoogled Chromium'
date: '2022-05-25'
last_modified_at: '2022-05-25 19:04:25'
tags:
  - 'browser'
  - 'chromium'
  - 'google'
  - 'privacy'
  - 'ungoogled'
  - 'web development'
description: 'A brief list of steps taken to install and properly configure Ungoogled Chromium for pure web development testing purposes on macOS.'
syndication: true
syndicate:
  - name: Mastodon
    url: https://indieweb.social/@m2m/108363784201325745
---
I’ve finally switched back to [Ungoogled Chromium](https://github.com/ungoogled-software/ungoogled-chromium) for web dev testing purposes. Here’s a brief list of the steps I followed to get it done. Installation on macOS happens through [Homebrew](https://brew.sh/). Once completed the browser can be found in `/Applications/`.

```bash
brew install --cask eloston-chromium
```

I later customized a few Chrome flags:

  - `#extension-mime-request-handling` set to _always prompt for install_ so that I can install extensions from `.crx` files.
  - `#show-avatar-button` set to _never_.
  - `#read-later` set to _disabled_.
  - `#side-panel` set to _disabled_.

After downloading uBlock Origin, I installed it by dragging the `.crx` file onto browser window. Then, I imported uBlock settings from Firefox. My `localhost` was added to the bookmarks. Since Ungoogled Chromium is already set to clear cookies and cache when all the windows are closed, and also no password suggestions, autofill, phone-home etcetera, I didn't have to go through the settings to polish things.

A complete list of FAQ can be [found on their wiki](https://ungoogled-software.github.io/ungoogled-chromium-wiki/faq).

The final result:

![Screenshot of an empty window of Ungoogled Chromium](/assets/images/ungoogled-chromium.png){: width="720" height="503" }