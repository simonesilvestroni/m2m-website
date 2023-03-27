---
title: 'Backup and audio archival'
date: '2021-01-27'
last_modified_at: '2021-11-08 21:37:08'
author: 'Simone Silvestroni'
tags:
  - 'workflow'
  - '3-2-1 backup'
  - 'backup'
  - 'archival'
  - 'audio preservation'
description: "Quick explanation of my strategy for saving and preserving sound material, both for personal use and for my clients."
---
## Why offer audio archival to clients?

I believe audio archiving is a nice-to-have additional feature to offer to clients. Think about future potential re-mixing or re-mastering, for instance. Audio stems from each session can be carefully filed to multiple sources, to guarantee the preservation of the material for years to come. Please note that I don’t offer _full sessions archives_, as that’s unrealistic.

## Perfecting the backup strategy

I’m constantly perfecting my backup and archive strategy, which includes both my work and personal data, and clients’. I rely on a proven [3-2-1 technique](https://www.backblaze.com/blog/the-3-2-1-backup-strategy/): three copies of everything at all times, two local and one off-site. Specifically:

- Two sets of redundant RAID drives running daily backups on both OSes.
- [Backblaze](https://www.backblaze.com/cloud-backup.html#af9rjz) remote cloud backup.

For extra-redundancy and out of an abundance of precaution, I also run:

- A Time Machine drive with the default hourly setup for macOS.
- A clone of my production SSD external drives on both OSes, so that I can be <em>instantly up and running</em> in case of malfunction.
- A <strong>bootable clone</strong> of my entire internal drive, for both OSes.