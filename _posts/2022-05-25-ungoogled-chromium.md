---
title: 'Ungoogled Chromium'
date: '2022-05-25 19:04:21'
last_modified_at: '2022-05-25 19:04:25'
categories:
  - 'Web design'
tags:
  - chromium
  - ungoogled
  - browser
  - privacy
description: 'A brief list of steps taken to install and properly configure Ungoogled Chromium for pure web development testing purposes on macOS.'
excerpt: 'I’ve finally switched back to <a href="https://github.com/Eloston/ungoogled-chromium">Ungoogled Chromium</a> for web dev testing purposes. Here’s a brief list of the steps needed to get it done properly.'
syndication: false
syndicate:
  - name: Mastodon
    url: 
---
Installation on macOS using Homebrew. Once completed the browser can be found in <kbd>/Applications/</kbd>.

```bash
brew install --cask eloston-chromium
```

Customized a few Chrome flags:

- <kbd>#extension-mime-request-handling</kbd> set to _Always prompt for install_ so that I can install extensions from `.crx` files.
- <kbd>#show-avatar-button</kbd> set to _Never_.
- <kbd>#read-later</kbd> set to _Disabled_.
- <kbd>#side-panel</kbd> set to _Disabled_.

Downloaded uBlock Origin and installed by dragging the `.crx` file to browser window. Then, I imported my uBlock settings from Firefox.

Set the local website as the only bookmark (it's already added to my white list in uBlock).

Ungoogled Chromium is already set to clear cookies and cache when all the windows are closed, and of course no password suggestions, autofill, phone-home etcetera.

A complete list of FAQ can be [found on their wiki](https://ungoogled-software.github.io/ungoogled-chromium-wiki/faq).

The final result:

{% include pattern-figure.html image="/assets/images/ungoogled-chromium.png" alt="An empty window of Ungoogled Chromium" caption="An empty window of Ungoogled Chromium" width="720" height="503" %}