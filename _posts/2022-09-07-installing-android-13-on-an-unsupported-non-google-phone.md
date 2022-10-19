---
title: 'Installing Android 13 on an unsupported non-Google phone'
date: '2022-09-07 16:13:04'
last_modified_at: '2022-09-07 16:13:04'
categories:
  - 'Technology' 
tags:
  - 'android'
  - 'xiaomi'
  - 'google'
description: 'My recent experience with renewing an almost 4-year old Xiaomi Redmi Note 7 mobile phone replacing the native operating system MIUI with the newest Android 13.'
excerpt: 'What follows is my recent experience with renewing an almost 4-year old Xiaomi Redmi Note 7 mobile phone, which cost £120 at the time. After replacing the native operating system MIUI 12, still based on Android 10, with the newest beta version of Android 13 for Pixel Pro 6, I now have a faster, sleeker and apparently newer phone that can last a few more years.'
---
## Why?

First and foremost, I strongly hate [planned obsolescence](https://en.wikipedia.org/wiki/Planned_obsolescence), along with its consequent reckless environmental abuse. Other than money and greed, there’s not a single rational reason behind releasing new phones every year, especially models that can’t be repaired.

Xiaomi already stated that *no new Android updates* would be made available for my device. I‘ve had enough of depending on a manufacturer’s whims for the safety and durability of my phone’s operating system.

A few more or less important further motives, in order of annoyance:

1. I’d been having issues with MIUI recently, mostly incomprehensible random reboots and boot loops. Reinstalling the OS, a time-consuming procedure, didn’t fix them.
2. MIUI activates by default a ton of “suggested” features, which is a preposterous euphemism for invasive ads popping up in core apps at all times. The operation of deactivating them is per se tiresome, as they’re all scattered around numerous settings.
3. The default OS is bloated by apps that cannot be removed. Also, despite having set Firefox as my default browser, they keep insisting on opening their own MI browser — which has been found to be [akin to spyware](https://thehackernews.com/2020/05/xiaomi-browser-history.html) — from links in core apps.
4. Every single alternative launcher failed to work in the long term, with issues that regularly crept up and increased in time. Maybe it was because of Xiaomi’s hyper-aggressive battery policies, I don’t know and don’t even care anymore.

## First step: unlock the device

Most Xiaomi devices come factory locked, which means it’s impossible to rewrite the bootloader without unlocking. An obvious note: the procedure voided any type of warranty or support from the manufacturer&nbsp;—&nbsp;which I didn’t care for.

1. **Enabled developer options** in `Settings > My Device` I tapped repeatedly on the MIUI version, until a pop-up message *You are now a developer!* appeared on screen.
2. **USB debugging**: activated *USB debugging* and *Install via USB* in `Settings > Additional Settings > Developer Options`.
3. **Unlocked** through [Xiaomi’s Unlock app](https://www.miui.com/unlock/index_en.html), which required a Windows machine.

## Second step: custom recovery bootloader

The second step was to install a custom recovery. I chose [OrangeFox](https://wiki.orangefox.tech/en/home), one of the most popular ones.

Downloading the version of OrangeFox [for my specific device](https://orangefox.download/en/device/lavender) was a bit trickier. My phone is a **Redmi Note 7 Pro**, whose codename is *violet*, but when I flashed the recovery for that model, I involuntarily bricked the phone — or at least, it seeemed like it was bricked.

After several hours, close to giving up, I’d decided to read the bootloader log from the terminal of my Window machine, through [`adb`](https://developer.android.com/studio/command-line/adb). To my utter surprise, the device was listed as *lavender* and not *violet*. Did they sell me a “Pro” device that wasn’t really pro? Whatever. Once re-downloaded the OrangeFox image for *lavender* and flashed the device, it worked like a charm.

### Boot into recovery

Next step: rebooted the device by pushing the power button together with the volume up button. After the orange background of OrangeFox finally greeted me, I proceeded to wipe:

- Dalvik
- Cache
- System
- Data
- Internal storage

After the wipe, I hit *back* and tapped on *Format Data*. Typed `yes`, hit the back button again, tapped the bottom icon *Menu* and chose *Reboot* > *Recovery*. If it wasn’t already, that’s when I was supposed to connect the device to the Windows machine via USB cable.

## Third step: custom ROM

My choice was [Android 13 for Pixel phones](https://www.pling.com/p/1741470/), which weighted around 2GB. From the computer, I copied the .zip file onto the internal storage.

When the OrangeFox recovery had booted up again, I tapped on the ROM .zip file (from the main menu tab *Files*) and authorized the installation.

Another reboot later, the animated Google logo told me that everything was going fine. Android 13 was installing! The classic Android setup followed.

## Outcome

### Improvements

Pretty much everything I was expecting worked, and some more. The four motives listed in the above *Why?* chapter have been fulfilled by this radical change.

- My old but still capable smartphone can stay up to date.
- No random reboots.
- No ads.
- No bloated apps. I even removed most of Google’s native apps without encountering a single issue.
- Custom launchers work perfectly.
- Battery life has improved in a way I’m struggling to explain: a single charge lasts *3 days and a half* with average use; *2 days and a half* with intensive use.
- Animations are somehow sleeker and all the interactions appears more fluid and faster. I really enjoy Android 13.

This is a biggie: **I never logged in to a Google account** and everything works smoothly. I’m using [F-Droid](https://f-droid.org/) and [Aurora Store](https://auroraoss.com/) to download apps. I feel less spied on now that I have a sort of Google Pixel native Android operating system.

I’ll probably want to check one of the Google-free alternatives such as [LineageOS](https://lineageos.org/), but so far I feel good where I am. Everything works, including all my OTP codes in [Aegis](https://getaegis.app/), which were re-imported in seconds from an encrypted backup.

I don’t sync the phone with any cloud, I use the open source and private [Syncthing](https://syncthing.net/) to help myself with contacts and copying or deleting pictures from the phone to macOS and viceversa. My Xiaomi Redmi Note 7 (non Pro, apparently) is now seen as “Pixel 6 Pro”.

### Issues

In two weeks, I’ve only experienced two minor problems, both connected to the same feature:

1. I seem to be incapable of shooting QR codes directly. I have to photograph them with the camera, and then load the photo in a QR reader. Not so big a deal.
2. The camera sometimes freezes on loading. To unblock, I just have to tap on a different scenario: portrait, night mode or whichever is there, and go back to the one I need. Again, no biggie.

Note: unlike several bug reports on LineageOS’ forums about the Redmi Note 7 camera which is only working at low resolutions, with this Android 13 ROM I can shoot pictures at the maximum resolution offered by the hardware.

### Revert to MIUI?

If, for whatever reason, I wish to go back to MIUI, all I have to do is download [Xiaomi’s flash tool](https://xiaomiflashtool.com/) and follow the instructions. I did exactly that when I bricked the phone, before re-flashing the recovery for the correct device, and it worked.

## Edit: A month later

1. The whole "Pro/non-Pro" issue was my fault. Apparently I had a [Mandela effect](https://en.wikipedia.org/wiki/False_memory#Mandela_Effect) on my own — in fact, I've found the original box, which clearly states it's a Redmi Note 7, not a Note 7 Pro.
2. Issue number one mentioned above, related to QR codes, doesn't exist anymore. I've been using a different app which doesn't have the same problem. Whenever I have to load up the camera to shoot a QR code from different apps (i.e. Bitwarden, in case of new TOTPs), there it can freeze. To solve it, I just need to open the Google Camera app and go back: it works.
