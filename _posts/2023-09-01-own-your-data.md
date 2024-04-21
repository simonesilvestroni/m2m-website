---
title: Own your data
date: '2023-09-01 11:16:33'
last_modified_at: '2023-09-01 11:16:36'
tags:
  - 'degrowth'
  - 'software'
  - 'workflow'
summary: 'What happens to your data when a remote system is shut down or just stops working? I don’t care, because I back it up, locally.'
---
A fantastic post by Parker Moore, titled [_Preserve your Instapaper bookmarks, highlights, and notes_](https://byparker.com/blog/2022/archive-instapaper-bookmarks/) inspired me to add an addendum to my recent post series about degrowth. When [talking about backup]({{ site.url }}/blog/i-guess-i-dont-trust-the-cloud/), I'd forgotten to note how I'm constantly saving data (locally) that's usually either scattered around my systems, or stored elsewhere online. While this point might be not specific to degrowth, it's part of a thought process that's been removed from our habits over the last decade or so. By accepting the _convenience_ of delegating everything that's supposed to be ours to corporation-owned remote systems, we basically exposed ourselves to data loss. I know, because I've been there.

Reflecting on the fleeting nature of tech tools, Parker writes about his reliance on Instapaper, a ‘read later’ services who can double as bookmarks, personal highlights and notes repository:

> As with any tech product, you don’t know if what they offer today will  persist into the future. Apps more famous and well-loved than Instapaper have been shut down over the years, so it’s entirely possible that  Instapaper could have the same fate someday. What if Instapaper shut  down? Where would that leave me? If I have the full list of all my  bookmarks, highlights, and notes, then it would be fine if Instapaper  shut down. So, I set out to see if I could make that happen.

To solve the risk of losing years of collected useful material, he wrote a Go program that connects to the Instapaper API, fetch the data, and then use it to build a Jekyll site. Even though I stopped using Instapaper a few years ago, the underlying issue is very real to me, to the point where I have a weekly routine to manually backup my data, which includes these sources:

{: .list-hr }
- Firefox bookmarks
- uBlock Origin settings
- Contacts and calendars
- Android
- Kobo
- PGP keys
- Pocket articles (both archived and to read), using their included [export tool](https://getpocket.com/export)
- Podcasts OPML
- RSS OPML
- Preferences and custom settings for a bunch of macOS programs (Alfred, Carbon Copy Cloner, Graphic Converter, iTerm, NetNewsWire, Reaper, Sublime Text, Typora, iA Writer)

Besides the weekly-ish routine, I also periodically export (once a year, usually) my email, using Thunderbird. The resulting `.mbox` files are then compressed to `.tar` and safely stored. Data backup that doesn’t include binary files are also pushed to private, or sometimes public, git repositories.