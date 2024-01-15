---
title: 'Automation for my static blog publishing workflow'
date: '2022-05-10'
last_modified_at: '2022-05-10 13:43:39'
tags:
  - 'dev project'
  - 'internet'
  - 'software'
  - 'walled gardens'
  - 'web development'
  - 'workflow'
skillset:
  - Jekyll
  - Markdown
  - HTML
  - CSS
  - Bash
  - macOS
  - apple script
description: 'Advanced content management in a Jekyll-based static blog, using automation on macOS.'
featimage: true
featimage-name: 'automation-for-my-blog-publishing-workflow.jpg'
featimage-alt: Screenshot of the macOS application Shortcuts showing automation routines
featimage-width: 1024
featimage-height: 739
syndication: true
syndicate:
  - name: Mastodon
    url: https://indieweb.social/@m2m/108277577329784745
---
## Objectives

After reading three articles about the frustrations of maintaining static web sites[^1], I thought about the fact that to me Wordpress took away the pleasure of writing, while I don't see the debated complexity of static sites. However, it's true that I’ve been looking for ways to improve and speed up my publishing workflow. Potentially, I could end up clicking an icon or dragging a file onto a folder, and a few seconds later the post would be ready to be written.

## Approach

What are the most annoying parts of writing a new post with a static site generator? Arguably, the answer would be twofold: first, the [front matter](https://jekyllrb.com/docs/front-matter/), which is the YAML-based section at the top of each post; second, adding images. I have two ideas in mind: a relatively 'manual' solution, versus a fully automated one.

### First: front matter content

I aim to streamline the process of writing new posts, with a sort of *wizard* guiding me throughout compiling the repetitive bits until an editor appears, and I just have to write the content.

#### Manual approach

With [Sublime Text](https://www.sublimetext.com) and the [Jekyll package](https://packagecontrol.io/packages/Jekyll) installed, it's a matter of creating a simple template with a front matter section and some variables, setting up a key command to call the `<New Post from template>` command, and finally compile the required fields in a matter of seconds.

My current _new Jekyll post_ template in Sublime Text looks like this:

```yaml
---
title: '$1'
date: '$2'
last_modified_at: '$3'
tags:
  - '$4'
description: '$5'
---
$6
```

When the template is waiting for my input, I write the post title, hit <kbd>tab</kbd>, invoke the Sublime command `Jekyll insert current datetime` to add a date in the correct format, repeat the same for `last_modified_at`, and then two more tabs to fill in tags and description. Basically, I'm six clicks away from writing a new post, which is fast enough for me.

#### Automated approach

At this point, I wanted to explore a more advanced method, exploiting macOS’ successor to [Automator](https://support.apple.com/guide/automator/welcome/mac), which I'm familiar with. Although it sometimes feels convoluted and buggy (early days?)[^2], with a sub-par [documentation](https://support.apple.com/guide/shortcuts-mac/welcome/mac), I managed to have a perfectly working automation process, that can be launched by either the Dock, as an application, or through Finder's contextual menu _Quick Actions_. The procedure to create a new blog post using Shortcuts indeed feels like compiling a wizard:

![Shortcuts app for creating a new Jekyll post](/assets/images/jekyll-automations-new-post.jpg){: width="720" height="1296" }

To break it down:

{: .list-hr }
1. A series of pop-ups ask for post title, post description, and a couple of tags (I can add more later if I need), setting variables for each input I type.
2. Runs a bash script which uses the variables passed as argument, and performs a few operations very quickly:
  - it creates a file in the correct `_posts/` folder, named after today’s date followed by the `title` variable, all converted to a web-friendly name;
  - adds the front matter section filled with previous variables;
  - opens the file in [Typora](https://typora.io) where I can start writing my post, while at the same time a simple AppleScript opens Terminal in a minimized session, running the site in localhost (`post` is a bash alias to my Jekyll build command).

### Second: adding images to a post

I see three steps: a process to guarantee that the image is thoroughly optimised for the web (resize, remove metadata, etc); placing the image where the blog expects it to be, and finally the addition of a code snippet to the post. The first step is made of four stages:

- Process the image so it’s web-safe and as lightweight as possible.
- Rename it to a web-friendly format.
- Move it to the correct folder, in my case `/assets/images/`.
- Add the required code snippet in the page.

#### Manual approach

With [Alfred](https://www.alfredapp.com) I can add pre-compiled _shortcodes_ (Markdown or Liquid code snippets in this case) by typing an associated keyword. Once the image has been processed with an external software, and moved to the directory `/assets/images/`, I can type the key command to paste my desired shortcode, whether that be a `<figure>` tag, `<picture>`, or a simple `<img>`. To that, I'd need to manually add alt description, along with `width` and `height`. It's a slightly convoluted procedure, yet it's something I've been doing for a long time.

#### Automated approach

I aimed at having to simply drag and drop images onto a droplet, which would take care of optimising (size and removal of metadata), web-friendly renaming, moving to my assets folder. Finally, I would end up with a markdown code snippet ready to paste in a post, complete with any required info. So far, I have a Shortcuts automation in its infancy, trying to deal with the optimisation stage. It's not ready yet, but if I manage to reach the same level of compression/quality ratio as I manually do with my image editing software, I’ll make the full switch. 

I'm currently employing two Shortcut automations, because while I still want to apply a few steps to multiple images, my preference is to add one image at a time to a post. As an example, I have 3 pictures on my desktop, named with spaces and odd capitalizations:

- `evil CORP.png`
- `FRIEND.jpg`
- `fux socy.JPG`

I select them all, right-click and choose: `Quick Actions > M2M process images`, which transforms file names into web-friendly versions, performs a conversion to `.webp` with a 85% quality factor, and finally moves everything to my assets folder. What I end up with is:

- `/assets/images/evil-corp.png`
- `/assets/images/evil-corp.webp`
- `/assets/images/friend.jpg`
- `/assets/images/friend.webp`
- `/assets/images/fux-socy.jpg`
- `/assets/images/fux-socy.webp`

![Shortcut automation for processing images to be used in a Jekyll post](/assets/images/jekyll-automations-process-images.jpg){: width="821" height="2187"}
_Shortcut automation for processing images to be used in a Jekyll post_

The final action takes a selected image, fetches its `width` and `height` while asking for the alt description in a pop-up text prompt. The script collects the required information, stores it in variables used to compile the snippet of code and send it to the clipboard, ready to be pasted in the post.

![Shortcut automation for inserting an image in a Jekyll post](/assets/images/jekyll-automations-insert-figure.jpg){: width="821" height="1046" }
*Shortcut automation for inserting an image in a Jekyll post*

By applying this second automation to one of the aforementioned example images, I end up with a buffered shortcode ready to be pasted in a blog post. In this case, a Jekyll module that passes parameters to the small block of code generating a `<picture>` element complete with the `.webp` image and its `.png` or `.jpg` fallbacks.

```html
{% raw %}{% include pattern-figure.html image="/assets/images/evil-corp.png" alt="this is the alt" caption="a caption here" width="1024" height="768" %}{% endraw %}
```

## Results

All in all, the automated procedure is quick and efficient. Since I consider blogging a pure _desktop activity_, I'm not worried about writing on mobile devices. Plenty of markdown editors are available on iOS and Android, it would be pretty easy to start drafts on the go, and finalise them later as posts on the computer. As a quicker alternative, I can always go to my git repository, add or edit a post there, commit the changes and wait for Netlify to complete its automated build.

[**Watch an old video demo**&nbsp;&rarr;](https://www.youtube.com/watch?v=K0AKv7aIxP8){: .cta .highlight }

### Future improvements

{: .list-hr }
- Polish the *new post* shell script, for example by switching from `tr` to `sed`[^3].
- Handle the image resize and optimization within Shortcuts, maybe implementing [command line scripts to manipulate images](https://css-tricks.com/converting-and-optimizing-images-from-the-command-line/).
- I'm not a fan of walled gardens, so I'd love to make the process cross-platform, using GNU make or similar alternatives.

## Skills

<ul class="list-inline">
  {% for skill in page.skillset %}
  <li><mark>{{ skill }}</mark></li>
  {% endfor %}
</ul>

[^1]: [_Why Bother With Static Sites_](https://rusingh.com/why-bother-with-static-sites/), by Ru Singh; [_Why I Bother With Static Sites_](https://michaelharley.net/posts/2022/03/10/why-i-bother-with-static-sites/), by Michael Harley; [_Easier Static Site Publishing_](https://www.lkhrs.com/blog/2022/04/easier-static-site-publishing/), by Luke Harris.
[^2]: Importing workflows from Automator to Shortcuts is somewhat hit-and-miss.
[^3]: [`tr`](https://en.wikipedia.org/wiki/Tr_(Unix)) is a Unix command: an abbreviation of _translate_ or _transliterate_, indicates its operation of replacing or removing specific characters in its input data set, while [`sed`](https://en.wikipedia.org/wiki/Sed) ("stream editor") is a Unix utility that parses and transforms text, using a simple, compact programming language.