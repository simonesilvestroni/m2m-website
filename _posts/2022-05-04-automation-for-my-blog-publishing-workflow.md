---
title: 'Automation for my static blog publishing workflow'
date: '2022-05-10'
last_modified_at: '2022-05-10 13:43:39'
categories:
  - 'Web design' 
tags:
  - 'macos'
  - 'automation'
  - 'shortcuts'
  - 'automator'
  - 'alfred'
  - 'jekyll'
  - 'sublime text'
  - 'front-end development'
description: 'How I’m currently managing writing new content in my Jekyll-based static blog, using Shortcuts on macOS.'
excerpt: 'How I’m currently managing writing new content in my Jekyll-based static blog, using Shortcuts on macOS.'
toc: true
---
Ever since I went live with a redesigned Jekyll-based website, I’ve been looking for ways to improve my publishing workflow. I prefer working with a static website rather than a CMS such as WordPress, yet there are methods to make this process more efficient. This is a work in progress, I’ll be adding new bits to this post in the future.

A few weeks ago I saw a few links posted on Mastodon about the frustrations of maintaining a static web site. [Ru Singh](https://rusingh.com/why-bother-with-static-sites/) argued about the complexity that takes away the pleasure of writing. A couple of follow-ups by [Michael Harley](https://obsolete29.com/posts/2022/03/10/why-i-bother-with-static-sites/), who uses Eleventy, and [Luke Harris](https://www.lkhrs.com/blog/2022/04/easier-static-site-publishing/), who uses Hugo, showed different point of views while still aknowledging similar problems.

I can understand the issues, yet none of them particularly apply to me. However, it’s true that I’ve been honing my process more and more, looking for a way where ideally I would end up clicking an icon or dragging a file into a folder and a few seconds later the post would be ready. Read [*Taking Shortcuts*](https://www.robinrendle.com/notes/taking-shortcuts/) by Robin Rendle to get what I’m talking about.

I thought about it and asked *what are the most annoying parts of writing a new post?* Arguably, the answer would be twofold: first, **the [Front Matter](https://jekyllrb.com/docs/front-matter/) block**, which is the top YAML-based section in a static site generator post; second, **adding images**.

## My goals

1. Streamline the process of writing new posts, where a sort of *wizard* would guide me throughout compiling all the repetitive bits until an editor appears and I just have to write the content.
2. Improve the way I add images to a new post as much as I can. What I have in mind is to select one or more images, drag them onto an app and have them: 
   - web-friendly renamed;
   - converted to WebP;
   - moved to `_assets/images`;
   - have a <kbd>figure</kbd> “shortcode” ready to be pasted in my post, complete with all the required info: <kbd>width</kbd>, <kbd>height</kbd>, <kbd>alt</kbd> text and <kbd>caption</kbd>.


## Old method: Sublime Text and Alfred

Before, my automation involved two steps: 

- Creating a new post in Sublime Text using a Jekyll extension capable of creating simple templates.
- Adding pre-compiled shortcodes using Alfred's workflows.

It was a good starting point: I obtained a file already named after the post title and today's date. I still had to manually fill in 6 empty fields in Front Matter. Same thing with Alfred's shortcodes: handy yet missing vital bits, such as image width and height. After reading Robin’s post I thought I could vastly improve the method using macOS’ new [Shortcuts](https://www.xda-developers.com/guide-shortcuts-macos/) app. I went as far as upgrading my OS to Monterey[^1].

## New method: Shortcuts

I’ve been using [Automator](https://support.apple.com/guide/automator/welcome/mac) for years and I love it. After a couple of days fiddling with Shortcuts I noticed how it doesn’t always agree with me. It looks powerful, yet it sometimes feels buggy[^2] and convoluted, with a sub-par [documentation](https://support.apple.com/guide/shortcuts-mac/welcome/mac). As usual with new things, it took me a while to understand how the new app *thinks*.

As of this writing, I have 3 automation processes that I'm happy about. They are exported as apps in `~/Applications` and in my Quick actions contextual menu. A fourth one is still in its infancy and not yet ready.

{% include pattern-figure.html image="/assets/images/jekyll-automations.png" alt="Local applications folder with custom Shortcuts automation for Jekyll" caption="Local applications folder with custom Shortcuts automation for Jekyll" width="500" height="241" %}

{% include pattern-figure.html image="/assets/images/quick-actions.png" alt="Quick actions contextual menu showing Shortcuts" caption="Quick actions contextual menu showing Shortcuts" width="600" height="317" %}

### New Jekyll post with Shortcuts

The following short video demonstrates the process in real time.

{% include pattern-video.html id="oAO2caYnF08" %}

{: .m2m-bg-alpha .border .p-3 .mb-5 .fs-5 }
**Note**: when the Terminal is shown, there’s a Jekyll compile issue: that‘s my fault as I’ve done this video twice and forgot to delete the previous test post with the same title. 🙈

Here is the whole routine of the _wizard_:

{% include pattern-figure.html image="/assets/images/jekyll-automations-new-post.png" alt="Shortcuts app for creating a new Jekyll post" caption="Shortcuts app for creating a new Jekyll post" width="505" height="1517" %}

#### Breakdown

{: .list-group .list-group-flush .mt-0 .ps-0 }
- {: .list-group-item .ps-0 }1️⃣ Asks for a post <kbd>title</kbd> and sets a variable using the input I provide in a pop-up.
- {: .list-group-item .ps-0 }2️⃣ Same for the <kbd>category</kbd>.
- {: .list-group-item .ps-0 }3️⃣ Same for a couple of <kbd>tags</kbd> (I can add more later if I need). It sets a variable containing an array of both my subsequent inputs.
- {: .list-group-item .ps-0 }4️⃣ Asks for the description, which goes in my <kbd>description</kbd> field in Front Matter, used for SEO purposes.
- {: .list-group-item .ps-0 }5️⃣ Same for the <kbd>excerpt</kbd> which gets printed below the main heading.
- {: .list-group-item .ps-0 }6️⃣ Runs a bash script where the <kbd>title</kbd> variable is passed as an argument and does a few things quicker than using native Shortcuts elements:
  - {: .my-2 }**Creates a file** in the correct folder, named with today’s date followed by the <kbd>title</kbd> variable (in the script I convert spaces with dashes and turn everything lowercase).
  - {: .my-2 }**Adds the Front Matter** section and fills it with all the variables I previously created.
  - {: .my-2 }**Launches my markdown editor Typora** which opens the file with a compiled Front Matter section.
- {: .list-group-item .ps-0 }7️⃣ Runs an AppleScript that opens a minimized session in the Terminal with my alias for running the `npm` task that holds both Jekyll build and SASS compile actions.

### Adding images to a post with Shortcuts

{: .m2m-bg-alpha .border .p-3 .fs-5 .mb-4 }
🚨 **Opinionated sidenote** — When I used a CMS, I could drag a huge photo to a media library because it would take care of resizing — and maybe optimization through a plug-in or two. *Regardless of how much I could streamline that workflow* on a CMS, it’s not my cup of tea. I always think about [sustainability](http://localhost:4000/blog/on-the-concept-of-frugal-computing/); the idea of having a website carrying a redundant amount of images is sub-optimal.

The process I follow for adding images to a blog post in Jekyll is made of 5 stages:

{: .list-group .list-group-flush .mt-0 .ps-0 }
- {: .list-group-item .ps-0 }1️⃣ Resize and compress so it’s web-safe and as light as possible, usually using [GraphicConverter](https://www.lemkesoft.de/en/products/graphicconverter/) and [ImageOptim](https://imageoptim.com/mac) on macOS.
- {: .list-group-item .ps-0 }2️⃣ Rename to a web-friendly format.
- {: .list-group-item .ps-0 }3️⃣ Make a `.webp` version.
- {: .list-group-item .ps-0 }4️⃣ Move to the correct folder, in my case `_assets/images`.
- {: .list-group-item .ps-0 }5️⃣ Add <kbd>width</kbd> and <kbd>height</kbd> to the `figure` tag.

So far, I’ve manually taken care of the first step. I have a Shortcuts automation in its infancy which is trying to deal with this. If I manage to reach the same level of compression/quality ratio as I do with GraphicConverter, I’ll make the switch.

Even though I tried to manage the whole process with Shortcuts, I have to split the process in two. That’s because I want to still apply steps 2-4 to **multiple images**, while I prefer to add one image at a time to my post.

Now, the images workflow is reduced to 2 steps:

- **Renaming and copying images to Jekyll’s assets**: 
  - Select image(s)
  - Right-click
  - Quick actions
  - <kbd>M2M images</kbd>

- **Inserting new images in a post**: 
  - Select the image I want to add to my post from `_assets/images` 
  - Right-click
  - Quick actions
  - <kbd>Jekyll insert figure</kbd>


I can either right-click and use the quick actions or drag the image to the Dock, where I keep the app version of the same automations.

#### Video demo

{% include pattern-video.html id="K0AKv7aIxP8" %}

{: .m2m-bg-alpha .border .p-3 .fs-5 }
**Note**: I clearly didn’t optimize the size. In fact, the images used in the video are from my collection of desktop wallpapers. 🙂

#### Breakdown

There are 3 pictures on my Desktop, all named incorrectly with wrong spaces and capitalizations:

- `evil CORP.png`
- `FRIEND.jpg`
- `fux socy.JPG`

First, I drag them onto my <kbd>M2M images</kbd> app. The app transforms file names into web-friendly versions, replacing spaces and other characters with dashes and turning the file names lowercase. Then it performs a conversion to `.webp` with a 85% quality factor and finally moves everything to my assets folder.

This is the shell script added at the end:

```bash
for f in "$@"
do
/usr/local/bin/cwebp -q 85 "$f" -o "${f%.*}.webp" && mv "$f" /Users/m2m/@ARCHIVE/2022/wwM2M/m2m-website/assets/images && mv "${f%.*}.webp" /Users/m2m/@ARCHIVE/2022/wwM2M/m2m-website/assets/images
done
```

The final action takes the selected image, fetches <kbd>width</kbd> and <kbd>height</kbd> while asking for <kbd>alt</kbd> and <kbd>caption</kbd> in a pop-up text prompt:

{% include pattern-figure.html image="/assets/images/jekyll-automations-insert-figure.png" alt="Shortcut automation for inserting an image in a Jekyll post" caption="Shortcut automation for inserting an image in a Jekyll post" width="545" height="960" %}

The trick is to collect the required information, store it in variables which I then use to compile my `figure` Jekyll module in a text block. The output is simply sent to the clipboard, ready to be pasted in my post. From the video, this was the resulting code that I pasted in the editor:

```html
{% raw %}{% include pattern-figure.html image="/assets/images/evil-corp.png" alt="this is the alt" caption="a caption here" width="2560" height="1440" %}{% endraw %}
```

## Dynamic content?

I didn’t mention forms and comments: that’s because I don’t need to automate any dynamic content. I have no forms and even if I’ve been planning to ditch Mailchimp and switch to Freelists or manual newsletters, I can easily add a form using Netlify’s functionality[^3], as [Silvia did](https://silviamaggidesign.com/newsletter/). I also didn’t want a comment system in the first place, preferring replies via email and W3C‘s [webmentions](https://en.wikipedia.org/wiki/Webmention).

## Mobile?

In his analysis, Luke has a detailed chapter about how he [writes on-the-go or on mobile devices](https://www.lkhrs.com/blog/2022/04/easier-static-site-publishing/#mobile-and-away-from-home-publishing). Again, I’m not elaborating because I never find myself in such a situation. Writing posts is not a urgent activity for me, therefore relying on my computer is enough. Had I been forced to, I’d consider two alternatives:

- Using [micropub](https://micropub.net/) with one of the online clients. I have an endpoint, unwisely untested though.
- Accessing my Github repo and activate [VS Code online](https://code.visualstudio.com/docs/editor/github).

## Deployment

Since the deployment strategy is git-based I don’t think it’s wise to automate this step. I’ve been using either the terminal or [Sublime Merge]({{ site.url }}/uses/#git).

## Future improvements

- Polish the *new post* shell script, for example by switching from `tr`[^4] to `sed`[^5].
- Add integration for responsive images.
- I'd love to port the whole process outside macOS, since I'm planning to move dev work to Linux.
- Handle the image resize and optimization within Shortcuts, maybe implementing scripts from [https://css-tricks.com/converting-and-optimizing-images-from-the-command-line/](https://css-tricks.com/converting-and-optimizing-images-from-the-command-line/). I’ve already started tinkering with this, see image below:

{% include pattern-figure.html image="/assets/images/jekyll-automations-image-optim.png" alt="Shortcuts script for optimizing images" caption="Initial Shortcuts script for optimizing images" width="627" height="650" %}

I will update this post or create a *Part 2* as a follow-up in case I manage to substantially improve the workflow.

## Conclusions

So far this methodology has been serving me well. I didn’t mind the previous not-so-dynamic workflow, but I appreciate the value of being helped on repetitive tasks. Especially with images: I’m sure I’ll be tinkering with the scripts until the whole process is consolidated into one precise action.

One thing I really disliked was Apple forcing me to enable iCloud Drive in order to export Shortcuts’ backups on my machine. I don’t see the point other than them trying for the umpteenth time to drag me into their walled garden.

## Also posted on

{: .list-unstyled .ps-0 }
- 🔄 [IndieNews](https://news.indieweb.org/en){: .u-syndication }
- 🔄 [Mastodon](https://indieweb.social/@m2m/108277577329784745){: .u-syndication }

## Footnotes

[^1]: I sorely miss the time when Apple simply released new apps that were available to download on several versions of OS X, but this is a rant for another day. The upgrade went well, unexpectedly fast with no issue whatsoever. I can honestly say it’s behaving better than all the previous OS updates that followed Mavericks. We’ll see.
[^2]: Importing workflows from Automator to Shortcuts doesn't always work, it's still a hit-and-miss.
[^3]: [Netlify forms ↗︎](https://www.netlify.com/products/forms/)
[^4]: <kbd>tr</kbd> is a Unix command: an abbreviation of _translate_ or _transliterate_, indicates its operation of replacing or removing specific characters in its input data set. [Read more ↗︎](https://en.wikipedia.org/wiki/Tr_(Unix))
[^5]: <kbd>sed</kbd> ("stream editor") is a Unix utility that parses and transforms text, using a simple, compact programming language. [Read more ↗︎](https://en.wikipedia.org/wiki/Sed)