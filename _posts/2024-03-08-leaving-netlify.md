---
title: Leaving Netlify
date: '2024-03-08 00:26:40'
last_modified_at: '2024-03-08 00:26:44'
tags:
  - 'internet'
  - 'web development'
  - 'workflow'
description: "Tomorrow marks the first week after migrating all the websites I share with my wife <a href='https://silviamaggidesign.com'>Silvia</a>, from Netlify to <a href='https://www.mythic-beasts.com'>Mythic Beasts</a>. Very happy about the quick transition, and grateful to <a href='https://www.thisdaysportion.com'>Leon Paternoster</a> for the brilliant suggestion. Here’s something I’ve noticed since."
---
In a similar fashion to how people can't remember phone numbers anymore, by delegating production build and deployment to Netlify, I progressively lost parts of a technical knowledge that comes with habits. While their free tier allowed me to quickly move away from WordPress at no cost, it undoubtedly contributed to the loss of control over how I manage the last stage of web design. Ironically, the main reason for leaving Automattic four years ago was indeed the will to regain control over my source code.

Years ago I used the powerful [Ruby gem Capistrano](https://capistranorb.com/) to deploy complex websites for large clients. It was the opposite of delegating the process, as I was fully in control from start to finish. I could customise the workflow by using SSH commands, managing different environments between development, staging, and production, filter files and more. I hadn't realised how Netlify more or less removed that kind of granular responsibility.

An immediate result was the embarrassing rush to find my old code, which helped discovering a way to consolidate Netlify's custom `.toml` configurations into a well constructed `.htaccess` file. After refactoring my entire dev/production workflow, I now feel way more confident. Once again, Silicon Valley had convinced me that convenience should be the path to do more tasks in less time. However, designing for the web is not like using a machine to wash the laundry. It's more like cooking: takes knowledge, experience, a bit of artistry. Also, it takes the right amount of *time*.