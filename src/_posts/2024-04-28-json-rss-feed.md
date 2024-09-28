---
title: JSON RSS feed
date: '2024-04-28 12:04:41'
last_modified_at: '2024-04-28 12:04:45'
tags:
  - 'web development'
summary: 'I quickly created a JSON feed for this website.'
---
While setting up [Echo Feed](https://echofeed.app) to mirror my blog posts on the fediverse, I've discovered how its capabilities to fetch from RSS were more powerful with a JSON feed rather than my regular XML-based one. It's been a while since I've tinkered with the structure of my Jekyll site, so creating a JSON feed sounded like a nice little challenge.

After studying how the new 1.1 spec works, I put Liquid at work, exploiting all kinds of available site-wide variables, loops, conditionals. The end result is a compiled feed.json file that can be added on Echo Feed to extract different sections of new blog posts. In my case: title, summary, permalink, and the first tag.

Here is the [compiled file]({{ site.url }}/feed.json), while this is the source code:

```
---
layout: null
---
{%- raw %}
{
  "version": "https://jsonfeed.org/version/1.1",
  "title": "{{ site.title | xml_escape }}",
  "home_page_url": "{{ "/" | absolute_url }}",
  "feed_url": "{{ "/feed.json" | absolute_url }}",
  "description": {{ site.description | strip_html | jsonify }},
  "icon": "{{ "/assets/images/favicons/apple-touch-icon.png" | absolute_url }}",
  "favicon": "{{ "/favicon.ico" | absolute_url }}",
  "expired": false,
  "authors": [
    {
      "name": "{{ site.author.name }}",
      "url": "{{ site.url }}",
      "avatar": "/assets/images/minutes-to-midnight-portrait.jpg"
    }
  ],
  "items": [
    {%- for post in site.posts limit:site.posts_limit %}
    {
      "title": {{ post.title | jsonify }},
      "date_published": "{{ post.date | date_to_xmlschema }}",
      "date_modified": "{{ post.last_modified_at | date_to_xmlschema }}",
      "id": "{{ post.url | absolute_url | sha1 }}",
      "url": "{{ post.url | absolute_url }}",
      "authors": [
        {
          "name": "{{ site.author.name }}",
          "url": "{{ site.author.url }}",
          "avatar": "/assets/images/minutes-to-midnight-portrait.jpg"
        }
      ],
      "summary": {{ post.summary | strip_html | jsonify }},
      "content_text": {{ post.content | strip_html | strip_newlines | jsonify }},
      "content_html": {{ post.content | strip_newlines | jsonify }},
      "tags": [{%- for tag in post.tags %}"{{ tag }}"{% unless forloop.last %},{% endunless %}{% endfor %}]
    }{%- if forloop.last == false %},{% endif %}
    {%- endfor %}
  ]
}{% endraw %}
```

I haven't tested the feed with a RSS reader, therefore it's not exposed in any page yet. I'm wondering if RSS readers could have any potential advantages.