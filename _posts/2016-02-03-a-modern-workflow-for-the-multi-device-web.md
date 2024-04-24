---
title: 'A modern workflow for the multi-device web'
date: '2016-02-03'
last_modified_at: '2024-04-24 16:57:59'
tags:
  - 'dev project'
  - 'web development'
skillset:
  - 'Responsive Design'
  - 'HTML'
  - 'CSS'
  - 'Javascript'
  - 'Agile'
summary: 'The process that led my company UI Farm to a workflow for delivering modern web solutions, using sustainable Responsive Web Design, was the culmination of years of experience paired with research.'
coauthor: 'Kara McCain (technical review)'
coauthorlink: 'https://www.linkedin.com/in/karamccain/'
featimage: true
featimage-name: 'a-modern-workflow-for-the-multi-device-web.jpg'
featimage-alt: 'Graphical representation of a sprint-based workflow with four stages, from analysis to deployment.'
featimage-width: 1820
featimage-height: 800
---
## Skills

<ul class="list-inline">
  {% for skill in page.skillset %}
  <li><mark>{{ skill }}</mark></li>
  {% endfor %}
</ul>

## Goals

By applying a sustainable and future-proof use of Responsive Web Design, <a href="https://web.archive.org/web/20201105212259/http://uifarm.co.uk/">UI Farm</a> wanted to deploy performant, multi-device websites within an agile environment.

## Our Method

Before a majority of global internet traffic started coming from all kinds of mobile devices, a traditional workflow approached the task in two phases:

![Phase 1](/assets/images/03_before-phase1.png){: width="982" height="330" }
_Phase 1_

![Phase 2](/assets/images/04_before-phase2.png){: width="980" height="334" }
_Phase 2_

### What We Wanted to Improve

Web agencies used to keep designers and developers separate, were none or little knowledge was shared among teams. Within this dynamic, designers delivered static design files to developers, who fought over the feasibility of every detail. The now obvious negative loops slowed down the process considerably:

- The client had to review every design change.
- The designer applied the changes, and re-submitted the files for approval.

![Negative loop: static images](/assets/images/05_negative-loops1.png){: width="406" height="428" }
_First problem: the static assets negative loop_

Since the project now had to be a responsive website, the loop needed to be repeated for each content view—small screens, tablets, desktop or larger. The ordeal was time consuming and expensive, producing assets that were not ideal in a multi-device web, forcing the developers to adapt a static design to a different media (the browser).

![Negative Loop 2: Not The Real Media](/assets/images/06_negative-loops2.png){: width="405" height="428" }
_Second problem: not the real media_

The implementation of static images created web pages with a *different look & feel* from the static designs, a fatal flaw due to the different nature of the media. In a world without "standard" devices nor resolutions, designers needed to think about:

- Device specific behaviour
- Look & feel on different media
- User interaction
- Performance

We always considered the browser as the natural media for a web page.

### Agile Workflow

UI Farm thought it was pointless to try to achieve sustainable and performant responsive design within an old-fashioned workflow. Using a scrum process, we divided both design and development stages into 2-week segments (depending on the project). The client got access to our project management system, with a permission to view the progress and interact for an open and quicker collaboration. This was augmented through shared documentation, which could be used to collaborate on specifications and requirements within projects and tasks.

### Version Control

[Git](https://en.wikipedia.org/wiki/Git_(software)) was used for code repository and version control. Every detailed commented commit was linked to its specific task, which ensured full traceability and easy rollback in case something had to be changed. It also allowed the developers to perform code reviews, and suggest improvements.

### Hybrid Roles

At UI Farm the role of UX designer and UI developer were hybrid: designers and developers worked together to create a fully responsive HTML/CSS prototype that provided multiple benefits.

### Designing Sustainably with Agile Iterations

By removing time-consuming bottlenecks, we turned indefinite loops into time-defined iterations, avoiding expensive non-interactive mockups—replaced by sustainable reusable prototypes.

{% include figure.liquid image='10_new-sprint-based-method.png' alt='Graphical representation of a sprint-based workflow with four stages, from analysis to deployment' width='1182' height='457' caption='A new sprint-based methodology' %}{: .fullscreen }

#### UX analysis and Wireframes

After user research, we agreed the functional requirements and specifications with the client. The UX designer started sketching the page templates. Based on the full UX analysis, a team of designers and developers started creating the wireframes *directly in the browser*. Major benefits:

- The client could see the wireframes via a live URL.
- The wireframe was a real HTML/CSS responsive prototype.
- The prototype ran on any device, on any browser.
- By keeping separate URLs for each stage, the client could see the progress in time.

Even at this early stage, it was possible to see how the site interacted with real users, and how the flow of the product works.

![A positive loop](/assets/images/11_positive-loop.png){: width="340" height="348" }
_A positive loop_

#### Skin (theme)

Bypassing the old phase where visual designers created static designs for each page—using applications like Adobe Photoshop—reinforced our choice of refusing tools that couldn't reflect the fluid, non-static nature of a multi-device web. Instead, we took the already interactive responsive wireframe, and applied design patterns on top, through the web’s natural language tools: HTML, CSS3, Javascript.

We engaged our visual designers when we needed graphical elements, using tools like Sketch, and now Figma. During this stage many more performance improvements were added, such as [conditional loading](https://adactio.com/journal/5414).

#### User Testing

UI Farm’s new Agile workflow carried the huge advantage of potentially adding user testing sessions to each iteration. Clients could test the usability starting from the wireframes, because it was a real web product already, running natively on any browser. It didn’t take long to reach this phase, and this is why our methodology was making usability testing doable even for low budgeted projects.

![Positive loops: user testing](/assets/images/12_positive-loop-user-testing.png){: width="258" height="298" }
_Positive loops: user testing_

#### Advantages

Applying changes for subsequent rounds of tests was quick, including *between* usability tests. A/B tests could also be easily arranged, before or after the project went live. Clients could test the same HTML-based product, and watch it evolve through subsequent improvements from the users' feedback. The resulting product was the one that eventually made it to production.

Changes requested by clients were a lot quicker to apply and get feedback on, which made the identification of potential design pitfalls easier. It was a true collaborative effort until the client was happy with the end result.

#### Quality Assurance

We adhere strictly to industry web coding standards:

- Valid HTML and CSS, verified by W3C.
- Conformity with all 3 priorities guidelines of the <abbr title="Web Content Accessibility Guidelines">WCAG</abbr>.
- A contrast ratio of 4.5:1 and higher (ideally 7:1) between background and foreground items.

### Performance

> 86% of responsive sites send about the same hefty payload to small screens as they do to large screens.
> <cite>[Brad Frost](http://bradfrostweb.com/blog/post/prioritizing-performance-in-responsive-design/)</cite>

We looked at performance as a major feature implemented by default, instead of treating it as an afterthought. During a quality assurance stage, UI Farm ran benchmarks, implemented all the improvements received from the feedback, and served the best experience to different devices. Results were clearly documented, and made accessible by the client.

By implementing a strong DRY strategy, essentially based on an object-oriented approach to both Javascript and SASS, we loaded the right asset for the right device, reducing the amount of code necessary to render the design assets.

### Testing

Functional, interface, usability, compatibility, accessibility and performance were tested on all pages against a defined browser list. All functional tests were carried out against the requirements agreed by both parties at the start of the project, and again, all the resulting documentation was made available.

### Deployment

Because we designed directly in the browser, the final responsive site was already available—no further front-end development needed. Using the efficient Ruby gem [Capistrano](http://capistranorb.com/), I quickly deployed all kind of websites through [SSH](https://en.wikipedia.org/wiki/Secure_Shell) and Git, keeping staging and production releases separate. In case something needed to be reverted, Capistrano’s multi-releases feature made roll-backs as easy as possible.

### A Case Study: Responsive Landing Pages for UniCredit

UniCredit, a major European bank, hired UI Farm to re-design and develop their online Acquisition landing pages, currently desktop-only. The client required a strong eye on accessibility, usability, along with a clean and modern design, optimised for great performance on all devices.

#### First Iteration: Responsive Wireframe In The Browser

{% include figure.liquid image='13_responsive-wireframe-in-the-browser.jpg' alt='Responsive wireframe in the browser' width='1176' height='688' caption='First iteration: responsive wireframe in the browser' %}{: .fullscreen }

#### Second Iteration: Theme

{% include figure.liquid image='14_second-iteration-skin.jpg' alt='Second iteration: skin' width='1176' height='688' caption='Second iteration' %}{: .fullscreen }

#### Third Iteration: Improvements From The Feedback

{% include figure.liquid image='15_third-iteration-improvements-feedback.jpg' alt='Third iteration: improvements from the feedback' width='1176' height='688' caption='Third iteration' %}{: .fullscreen }

The same pages had undertaken several stages, going from a greyscale wireframe to a full-fledged web product while maintaining the same repository and a consistent look & feel. The client was free to perform full-scaled usability tests over different incarnations of the same website, without worrying about the awkward feel of static mockups and prototypes.

#### Results

UniCredit performed A/B tests on the new landing pages, which proved successful for all mobile devices against the former desktop-only version.

> UI Farm’s innovative workflow and unique skills has given us a very clear insight into our customers’ behaviour and preferences, which has considerably boosted our account application conversions.<br>
> Thanks to UI Farm’s approach, we have been able to significantly improve the experience delivered to our customers and prospects, and make changes that may have seemed minor to us but have resulted in significant conversion lifts. UI Farm has truly changed our approach to Interaction Design.
> <cite>Gabriele Rosati, Head of Interaction Design at UniCredit</cite>

## Conclusions

We strongly believe that a multi-device web should massively gain from a sustainable workflow. To achieve this, new methods and a more focussed effort on features previously considered minor, need to be used. Or invented. Or both.