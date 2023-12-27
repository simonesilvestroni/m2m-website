---
title: I guess I don’t trust the Cloud
date: '2023-08-23 10:57:49'
last_modified_at: '2023-08-23 10:57:52'
tags:
  - 'degrowth'
  - 'internet'
  - 'personal'
  - 'sustainability'
  - 'workflow'
description: 'Fourth instalment in my ‘degrowth’ series: how and why I use the cloud (not), with a closing note about backup.'
---
I basically use _zero_ cloud systems, even though I was an eager early adopter, because of the following reasons: 

{: .list-hr }
- I inherently don't trust any of the suppliers, in terms of security, surveillance, and the uncomfortable feeling of [depending on some distant corporation for accessing my files](https://mjtsai.com/blog/2023/08/08/another-user-locked-out-of-apple-account/).
- A string of bad experiences — data loss, mostly.
- A complete hatred for the amount of data transferred, which has a snowballing effect on [how much electricity is consumed](https://mit-serc.pubpub.org/pub/the-cloud-is-material/release/1).
- I'm not _constantly_ connected to the internet, neither I want to, so having files locally available at all times is paramount.
- I don't actually need a cloud.

I removed any data from iCloud and other services a few years ago. I still have a free Dropbox account with 7.5 GB of space, only used to share music material with a couple collaborators, three or four times a year. Since I don't want to get near their awful desktop client, [Transmit](https://panic.com/transmit/) on the Mac is the perfect tool to manage those files.

To keep a few relevant files in sync between devices (a Mac and an Android phone), plus a folder shared with my wife, I use the open source [Syncthing](https://syncthing.net/). The only other two things that I actually need are address book and calendar, a feature easily achieved through [Mailbox.org's calDAV and cardDAV]({{ site.url }}/blog/email-migration-from-proton-to-mailbox/).

I don't stream music. We use a local music library on a fast <abbr title="Solid State Drive">SSD</abbr>, shared using our old Airport Extreme. Whenever I want some music on the go, I just connect my phone to the Mac and use [Commander One](https://mac.eltima.com/file-manager.html) to copy whatever I fancy listening to. Had I not needed two SIMs, I would have probably cloned the entire library on an <abbr title="Secure Digital">SD</abbr> card.

To reiterate, I seriously don't want anything else synced between computer and smartphone. I'm aware that I too fell victim to the induced need to have _everything_ with me at all times — not anymore. Why should I carry [a productivity system](https://brainbaking.com/post/2023/03/continuous-productivity-is-toxic/) in my pocket? Yet another toxic habit that I happily ditched. I'd rather play a video game while on a train trip, maybe read an article or two, send a couple messages. If I really have to jot down something while on the go, I'll open a text editor and write, or better: take a note with pen and paper. No need for a cloud, especially one that I don't own or control.

## A word on backup

After a few years using Backblaze as a cloud-based off-site backup failsafe, I quit six months ago, so I'm back to keeping all my backups _local_. Following a [3-2-1 rule]({{ site.url }}/blog/backup-and-audio-archival/), the third complete set of backup is indeed off-site, meaning it's temporarily hosted at a friend's house. As soon as we re-settle in the UK, we might rent a safety box. It'll cost more than Backblaze, but it'll be available at a bike ride's distance.