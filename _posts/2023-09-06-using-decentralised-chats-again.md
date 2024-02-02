---
title: Using decentralised chats again
date: '2023-09-06 12:53:07'
last_modified_at: '2023-09-06 17:21:23'
tags:
  - 'internet'
  - 'personal'
  - 'social media'
description: 'Reflecting on the slower decentralised way to communicate online during the 1990s, I outline a simple path to bring back a quieter and safer internet-based chat.'
---
The best ways to join communities on the internet, when I started in the early 1990s, were: [BBS](https://en.wikipedia.org/wiki/Bulletin_board_system), [IRC](https://en.wikipedia.org/wiki/Internet_Relay_Chat) and [Usenet](https://en.wikipedia.org/wiki/Usenet). I happily used them for more than a decade, still missing them all. From my point of view, every time someone tries to “evolve” an existing online platform, they lose the ethos in the process. The push to centralise everything, especially after the advent of large social networks, brought an obsessive effort to rack up money from venture capitalists whilst catering every product to the largest possible amount of people. Clearly, the sum of these factors out-shadow the concept of an open web: what was once *the* web, is now a tiny corner inhabited by misfits. Even though I’m content to be spending time in small online niches, several modern offsprings of those old systems feel forced onto me. 

Debating on Mastodon about the need for a private way to discuss among friends, I realised how much I dislike the modern concept of *instant messenger*. Despite having used [ICQ](https://en.wikipedia.org/wiki/ICQ) and [iChat](https://en.wikipedia.org/wiki/IChat) since their inception (and of course SMS on mobile phones), there’s something deeply irritating about Signal, Telegram, WhatsApp etc. Besides their proliferation with the consequent fragmentation, I guess their ubiquitous nature, along with a tendency to interrupt any activity and invade my privacy, is what bug me. Older chat systems made conversations intrinsically asynchronous: they stayed on one device, there wasn’t urgency, and I wasn’t notified of any new messages unless I opened the program — like email.

Even if I silence instant messengers on my phone, the way people now assume a *live interaction* annoys me to no end. In my home-country of Italy, I keep stumbling on zombie-like people, walking around with their phones close to the mouth, mumbling and gesticulating as if they were having an actual conversation. They constantly record *vocal messages* on WhatsApp — the overwhelmingly mainstream instant messenger here. Without going down the rabbit hole of what a waste of broadband that is, I always ask myself: wouldn't it be much quicker if they called each other?

I tried quitting most of these *apps*: it truly becomes a tiring situation. When I came back to this country three years ago, most people had forgotten about the existence of text SMS, with the youngest ones ignoring the tech altogether.

## (Slowly) moving back to XMPP

To fight back against the fragmentation of proprietary applications, I’d rather use a *protocol*. While many instant messengers have based their tech on the open communication decentralised [Jabber](http://www.jabber.org/) protocol (now called [XMPP](https://en.wikipedia.org/wiki/XMPP)), they’re all centralised and mostly cloud-based by design.

> XMPP has a huge potential to replace platforms like Telegram, Signal, and WhatsApp, although its use hasn't reached mass consciousness. Rather then spread awareness of friendly and open technologies like these, big tech companies preferred to build their proprietary solutions ontop of XMPP and market those instead - so you may have been using XMPP this whole time without even knowing it.
>
> Instead of depending on proprietary centralized chat platforms like Telegram, WhatsApp and Signal we believe that truly decentralized platforms like XMPP can achieve and surpass our needs.<cite>[Take back our tech](https://takebackourtech.org/xmpp-comeback/)</cite>

I haven’t stopped using Telegram yet, what I did was creating an account with [Disroot](https://disroot.org/mission-statement), which [offers XMPP](https://disroot.org/en/services/xmpp) among their many perks.[^1] Then, I installed the free and open source lightweight application [BeagleIM](https://beagle.im/), refusing to install a mobile counterpart, because things that are conceived as decentralised and asynchronous should ditch the concept of being *always live 24/7*.

## What’s different?

Besides the obvious observation that the whole process might look less user-friendly than giving away your phone number ~~and contact list to a distant corporation~~, here's a few points:

{: .list-hr }
- It’s quieter! Yes, very few friends are currently using XMPP, but in general there's no pressure, like on any IRC chat.
- I can switch the software I use as client, without losing my account or the ability to reach out to my contacts.
- I’m not tied to yet another proprietary single-use application, which makes me effectively free from corporate controversy, whether it’s Meta, the founder of Telegram, or others.
- Most modern XMPP software clients have encryption on by default&nbsp;—&nbsp;Beagle IM uses the widespread [OMEMO](https://en.wikipedia.org/wiki/OMEMO).

[^1]: To sign up for Disroot head over to their [“New user registration” form](https://user.disroot.org/pwm/public/newuser)