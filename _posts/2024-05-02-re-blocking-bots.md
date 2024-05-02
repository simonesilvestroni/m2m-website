---
title: 'Re: Blocking Bots'
date: '2024-05-02 16:41:26'
last_modified_at: '2024-05-02 16:41:28'
tags:
  - 'web development'
summary: 'Inspired by <a href="https://neil-clarke.com/block-the-bots-that-feed-ai-models-by-scraping-your-website/">Neil Clarke</a> and Ethan Marcotte, I moved my list of crawlers to a Jekyll YAML data file, and now use it to compile both the <code>.htaccess</code> and <code>robots.txt</code> files.'
replyto: 'https://ethanmarcotte.com/wrote/blockin-bots/'
replytouser: 'Ethan Marcotte'
---
The premise is simple: to opt out of AI bots scraping my website and participate to the ongoing training of LLMs, I used to block a bunch of them via the old and trusted `robots.txt`. Since a rewrite condition within Apache's `.htaccess` adds a further level of protection, I went on and created a single data file, writing the logic to use it to feed both files.

Once created [`bots.yml`](https://github.com/simonesilvestroni/m2m-website/blob/main/_data/bots.yml) in my Jekyll data directory, I used a loop to iterate through the single items in my `robots.liquid` source file:

```
{%- raw %}
---
layout: none
permalink: /robots.txt
---
{%- for item in site.data.bots -%}
User-agent: {{ item }}
Disallow: /

{%- endfor %}{% endraw %}
```

The end result after a site build is a `/robots.txt` file containing the entire list of disallowed bots. The rewrite instructions to block AI crawlers in the `.htaccess` file are the same as suggested by Ethan. Instead of performing a `for` loop, I just print them inline within a rewrite condition, separated by a pipe character:

```
{%- raw %}
# Block bots
<IfModule mod_rewrite.c>
  RewriteEngine on
  RewriteBase /
  RewriteCond %{HTTP_USER_AGENT} ({{ site.data.bots | sort_natural | join: "|" }}) [NC]
  RewriteRule ^ – [F]
</IfModule>{% endraw -%}
```

## Redirects

Since I was there, I also optimised the `.htaccess.liquid` source file by creating a further YAML data file with all my redirects, looping through them in a now neat source file:

```
{%- raw %}
# Redirects
{%- for item in site.data.redirects %}
Redirect 301 {{ item }}
{%- endfor %}{% endraw -%}
```