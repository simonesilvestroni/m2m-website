---
title: 'Installing Android 13 on an unsupported non-Google phone'
date: '2022-09-07 16:13:04'
last_modified_at: '2022-09-07 16:13:04'
tags:
  - 'android'
  - 'sustainability'
description: 'My recent experience with renewing an almost 4-year old Xiaomi mobile phone, replacing its native operating system with the newest Android 13.'
---
I paid my Redmi Note 7 mobile phone around `£130`. First and foremost, I strongly hate [planned obsolescence](https://en.wikipedia.org/wiki/Planned_obsolescence), along with its consequent reckless environmental abuse. Other than money and greed, there’s not a single rational reason behind releasing new phones every year, especially models that can’t be repaired.

Xiaomi told me that *no new Android updates* would be made available for the device. I’ve had enough of depending on a manufacturer’s whims for the safety and durability of the hardware I buy.

## Recent annoyances

{: .list-hr }
- I’d been having issues with MIUI recently, mostly random reboots and boot loops. Reinstalling the OS, a time-consuming procedure, didn’t fix them.
- MIUI activates by default a ton of “suggested” features, which is a preposterous euphemism for invasive ads popping up in core apps at all times. The operation of deactivating them is per se tiresome, as they’re all scattered around numerous settings.
- The default OS is bloated with apps that cannot be removed. Also, despite having set Firefox as my default browser, they keep insisting on opening their own MI browser — which has been found to be [akin to spyware](https://thehackernews.com/2020/05/xiaomi-browser-history.html) — from links in core apps.
- Every single alternative launcher failed to work in the long term, with issues that regularly crept up and increased in time. Maybe it was because of Xiaomi’s hyper-aggressive battery policies, I don’t know and don’t even care anymore.

## First: unlock the device

Most Xiaomi devices come factory locked, which means it’s impossible to rewrite the bootloader without unlocking. Obligatory note: the procedure voids any type of warranty or support from the manufacturer.

{: .list-hr }
- Enabling developer options: in Settings &rarr; My Device I tapped repeatedly on the MIUI version, until a pop-up message *You are now a developer!* appeared on screen.
- USB debugging: activated *USB debugging* and *Install via USB* in Settings &rarr; Additional Settings &rarr; Developer Options`.
- Unlocking: [Xiaomi’s Unlock app](https://www.miui.com/unlock/index_en.html) required a Windows machine.

## Second: custom recovery bootloader

I chose [OrangeFox](https://wiki.orangefox.tech/en/home), one of the most popular bootloaders. Downloading the correct version [for my specific device](https://orangefox.download/en/device/lavender) was a bit trickier. My phone is a **Redmi Note 7 Pro**, whose codename is *violet*, but when I flashed the recovery for that model, I involuntarily bricked the phone — or so  it seeemed.

After several hours, close to giving up, I’d decided to read the bootloader log from the terminal of my Window machine, through [`adb`](https://developer.android.com/tools/adb). To my utter surprise, the device was listed as *lavender* (code name for the regular Redmi Note 7) and not *violet*. Did they sell me a pro device that wasn’t really pro? Whatever. Once re-downloaded the OrangeFox image for *lavender*, it worked like a charm.

## Third: boot into recovery

Next, I rebooted the device by pushing the power button together with the volume up button. After OrangeFox finally greeted me, I proceeded to wipe:

- Dalvik
- Cache
- System
- Data
- Internal storage

Afterwards, I hit <kbd>Back</kbd> and tapped on <kbd>Format Data</kbd>. Typed `yes`, hit the back button again, tapped the bottom icon <kbd>Menu</kbd> and chose Reboot &rarr; Recovery. If it wasn’t already, that’s when I was supposed to connect the device to the Windows machine via USB cable.

## Fourth: custom ROM

My choice was [Android 13 for Pixel phones](https://www.pling.com/p/1741470/), which weighted around 2GB. From the computer, I copied the .zip file onto the internal storage. When the OrangeFox recovery had booted up again, I tapped on the <abbr title="Read Only Memory">ROM</abbr> .zip file from the main menu tab <kbd>Files</kbd> and authorized the installation.

Another reboot later, the animated Google logo told me that everything was going fine. Android 13 was installing. The classic Android setup routine followed.

## Improvements

Pretty much everything I was expecting worked, and some more.

{: .list-hr }
- My old but still capable smartphone can stay up to date.
- No random reboots.
- No ads.
- No bloated apps. I even removed most of Google’s native apps without encountering a single issue.
- Custom launchers work perfectly.
- Battery life has improved in a way I’m struggling to explain: a single charge lasts *3.5 days* with average use; *2.5 days* with intensive use.
- Animations are sleeker and the interactions feel fluid and faster.

This is a biggie: _I never logged in to a Google account_ and everything works smoothly. I’m using [F-Droid](https://f-droid.org/) and [Aurora Store](https://auroraoss.com/) to download apps. I feel less spied on now that I have a sort of Google Pixel native Android operating system. I’ll probably want to check one of the Google-free alternatives such as [LineageOS](https://lineageos.org/), but so far I feel good where I am. Everything works, including all my OTP codes in [Aegis](https://getaegis.app/), which were re-imported in seconds from an encrypted backup.

I don’t sync the phone with any cloud, I use the open source and private [Syncthing](https://syncthing.net/) to help myself with contacts and copying or deleting pictures from the phone to macOS and viceversa. My Xiaomi Redmi Note 7 (non Pro, apparently) is now seen as “Pixel 6 Pro”.

## Issues

In two weeks, I’ve only experienced two minor problems, both connected to the same feature:

{: .list-hr }
- I seem to be incapable of shooting QR codes directly. I have to photograph them with the camera, and then load the photo in a QR reader.
- The camera sometimes freezes on loading. To unblock, I just have to tap on a different scenario: portrait, night mode or whichever is there, and go back to the one I need.

Unlike several bug reports on LineageOS’ forums about the Redmi Note 7 camera which is only working at low resolutions, with this Android 13 ROM I can shoot pictures at the maximum resolution offered by the hardware.

### Revert to MIUI?

If, for whatever reason, I wish to go back to MIUI, all I have to do is download [Xiaomi’s flash tool](https://xiaomiflashtool.com/) and follow the instructions. I did exactly that when I bricked the phone, before re-flashing the recovery for the correct device, and it worked.

<aside class="warning">
  <p><strong>Edit, a month later</strong> — The whole "Pro/non-Pro" issue was my fault. Apparently I had a <a href="https://en.wikipedia.org/wiki/False_memory#Mandela_Effect">Mandela effect</a> — in fact, I’ve found the original box, which clearly states <em>Redmi Note 7</em>, not <em>Note 7 Pro</em>. The issue related to QR codes only exists in WhatsApp for whatever reason, which is definitely not a problem.</p>
</aside>