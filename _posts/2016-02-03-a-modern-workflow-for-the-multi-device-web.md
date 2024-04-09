---
title: 'A modern workflow for the multi-device web'
date: '2016-02-03'
last_modified_at: '2023-04-25 18:37:08'
tags:
  - 'dev project'
  - 'web development'
skillset:
  - 'Responsive Design'
  - 'HTML'
  - 'CSS'
  - 'Javascript'
  - 'Agile'
description: 'The process that led UI Farm to a workflow for delivering modern web solutions, using sustainable Responsive Web Design.'
coauthor: 'Kara McCain (technical review)'
coauthorlink: 'https://www.linkedin.com/in/karamccain/'
featimage: true
featimage-name: 'a-modern-workflow-for-the-multi-device-web.jpg'
featimage-alt: image description
featimage-width: 1024
featimage-height: 739
---
## Objectives

By applying a sustainable and future-proof use of Responsive Web Design, <a href="https://web.archive.org/web/20201105212259/http://uifarm.co.uk/">UI Farm</a> want to achieve performant, multi-device websites within an agile environment.

## Approach

An always [increasing percentage of global internet traffic is coming from mobile devices](http://www.cisco.com/c/en/us/solutions/collateral/service-provider/visual-networking-index-vni/white_paper_c11-520862.html). In a traditional workflow, before the multi-device web became predominant, we mostly worked in two phases:

![Phase 1](/assets/images/03_before-phase1.png){: width="982" height="330" }
_Phase 1_

![Phase 2](/assets/images/04_before-phase2.png){: width="980" height="334" }
_Phase 2_

### What Could Be Improved

Web agencies used to keep the roles of the designer and the developer *separate*. Sometimes, none or little knowledge was shared among them. Within this dynamic, designers delivered _static design files_ to developers, who fought over the feasibility of every detail. Static image files generated negative loops:

- The client has to review every design change.
- The designer applies the changes, and re-submit the files for approval.

![Negative loop: static images](/assets/images/05_negative-loops1.png){: width="406" height="428" }
_Negative loop: static images_

If the project is a responsive website, the process is going to be repeated for each content view, whether it's small screens, tablets, desktop o larger. The whole process of handling this negative loop is time consuming and expensive, produces assets that are not ideal in a multi-device web, and forces the developers to adapt a static design to a different media (the browser).

![Negative Loop 2: Not The Real Media](/assets/images/06_negative-loops2.png){: width="405" height="428" }
_Negative loop: not the real media_

The implementation of static image files creates web pages that have a *different look & feel* from the static designs. This is a fatal flaw, due to the different nature of the media. In fact, the natural media for a web page _is_ the browser. In a world where there are no more "standard" devices nor resolutions, the designer needs to think about:

- Device specific behaviour
- Look & feel on different media
- User interaction
- Performance

### Agile

UI Farm think it is pointless to try to achieve this within an old-fashioned workflow, where roles are separate, designers produce static image files, and efficient Agile methodologies are hard to implement. Using JIRA by Atlassian, we divide both design and development tasks into 2-week segments. The client gets access to view the progress of each task, interacting for an open and quicker collaboration on the designs and website development. This is also achieved through shared documentation, which can be used to collaborate on specifications and requirements within projects and tasks.

### Version control

[Git](https://en.wikipedia.org/wiki/Git_(software)) is used for code repository and version control. Every commit includes a detailed comment, and it’s linked to a specific project task on JIRA: this ensures *full traceability and easy rollback* in case something needs to be changed. It also allows the developers to review each others’ code, and suggest improvements.

### Hybrid roles

At UI Farm the role of UX designer and UI developer are hybrid, with less separation. The designer and developer work together to create a fully responsive HTML/CSS prototype that provides multiple benefits.

### Design sustainably with Agile iterations

Evolve and remove time-consuming bottlenecks, by turning indefinite loops into time-defined iterations, avoiding expensive, non-interactive mockups by designing sustainable reusable prototypes.

![A new sprint-based methodology](/assets/images/10_new-sprint-based-method.png){: width="1182" height="457" }
_A new sprint-based methodology_

#### Sprint 1: UX analysis

After agreeing the functional requirements and specifications, the UX designers will undertake sketching of the page templates.

#### Sprint 2 & 3: wireframe

Based on UX analysis and sketches, designers and developers start creating the wireframes, *directly in the browser*. Major benefits:

- The client can see the wireframes via a live URL.
- The wireframe is a real HTML/CSS responsive prototype.
- The prototype runs on any device, on any browser.
- By keeping a separate URL for each version, the client can see the progress.

Even at this early stage, the client can see how the site _will interact with the user_ and how the flow of the product works.

![A positive loop](/assets/images/11_positive-loop.png){: width="340" height="348" }
_A positive loop_

#### Sprint 4 & 5: skin

Traditionally, the next step would be for the visual designer to create static designs for each page, in applications like Adobe Photoshop. At UI Farm we don’t use such tools to design responsive websites as they can’t reflect the fluid, non-static nature of the multi-device web. With visual designers and developers working together, we take the interactive responsive wireframe and apply the design patterns on top, through the web’s _natural language tools_: HTML, CSS3, Javascript. We then engage the visual designers when we need graphical elements for a design pattern, using tools like Sketch. In this stage we also add many more performance improvements, such as [conditional loading](https://adactio.com/journal/5414).

##### User Testings

One huge advantage with UI Farm’s agile new workflow is the possibility to add user testing sessions into each Agile sprint. Clients can do usability tests starting from the wireframe version, as it is a real web product already, running on all devices. It doesn’t take long to reach this phase, and this is why our methodology is making the usability tests doable even for low budgeted projects.

![Positive loops: user testing](/assets/images/12_positive-loop-user-testing.png){: width="258" height="298" }
_Positive loops: user testing_

##### Advantages

It is very easy to apply changes for subsequent rounds of tests, and even possible to apply changes *between* a usability test and the following. Finally, A/B tests can be easily arranged, before or after the project is live. Clients can test the usability of *the very same HTML product*, and watch it evolve through subsequent tests and improvements from the feedback. The tested product throughout all of the different phases, is the one that eventually makes it to production. 

Also, client changes are a lot quicker than changing static image files, and having the designers and developers working closely, it’s easy for them to identify potential design pitfalls up-front. This stage is a *true collaborative effort* until the client is happy with the end result.

#### Sprint 6: quality assurance

UI Farm adheres strictly to industry web coding standards:

- Valid HTML and CSS, verified by W3C.
- Conformity with all priority 1, 2, and 3 guidelines of the W3C <abbr title="Web Content Accessibility Guidelines">WCAG</abbr>.
- A contrast ratio of 4.5:1 and higher (ideally 7:1) exists between background and foreground items.

### Performance

> 86% of responsive sites send about the same hefty payload to small screens as they do to large screens.
> <cite>[Brad Frost](http://bradfrostweb.com/blog/post/prioritizing-performance-in-responsive-design/)</cite>

In other words, mobile users are downloading desktop-sized sites. We look at **performance as a major feature implemented by default**, and not treated as an afterthought. During the quality assurance Agile sprint, UI Farm run several benchmarks, implementing all of the performance improvements, to serve the best experience to all the different devices. All the results are documented and accessible by the client.

### Don’t Repeat Yourself

UI Farm implemented a strong DRY strategy, essentially based on an object-oriented approach to both Javascript and [SASS](http://sass-lang.com/), loading the right asset for the right device, heavily reducing the number of scripts and the amount of code necessary to render the design assets. UI Farm’s implementation of responsive images is a great addendum to this approach.

### Testing

We perform functional, interface, usability, compatibility, accessibility and performance testing on all pages against our defined browser list. All functional tests are carried out against the requirements agreed by both parties at the start of the project, and again, all the resulting documentation is made available.

### Deployment

As we are now designing directly into the browser, the final responsive site is already available. No further front-end development is needed. Using the ultra-efficient [Capistrano](http://capistranorb.com/), written in Ruby, we quickly deploy websites through [SSH](https://en.wikipedia.org/wiki/Secure_Shell) and Git, keeping any staging and production releases properly separate. In case something needs to be reverted, Capistrano’s multi-releases feature makes a roll-back to a previous version as easy as possible.

### A Case Study: UniCredit Responsive Landing Pages

UniCredit, a leading European bank, hired UI Farm to re-design and develop their Online Acquisition landing pages, currently desktop-only. UniCredit required a strong eye on accessibility, usability, and a clean and modern design, optimised for great performance on all modern devices. After the UX analysis, the client agreed with UI Farm to perform an optimisation of the content, prioritising it for a responsive re-design and the best performance.

#### First Iteration: Responsive Wireframe In The Browser

![Responsive wireframe in the browser](/assets/images/13_responsive-wireframe-in-the-browser.jpg){: width="1176" height="688" }
_First iteration: responsive wireframe in the browser_

#### Second Iteration: Skin

![Second iteration: skin](/assets/images/14_second-iteration-skin.jpg){: width="1176" height="688" }
_Second iteration_

#### Third Iteration: Improvements From The Feedback

![Third iteration: improvements from the feedback](/assets/images/15_third-iteration-improvements-feedback.jpg){: width="1176" height="688" }
_Third iteration_

The same pages had undertaken several phases, going from a greyscale wireframe to a full-fledged web product while maintaining the same repository and a consistent look & feel. The client was free to perform *full-scaled usability tests over different stages of the same website*, without worrying about the non-real feel of static mockups and prototypes.

A final word for the **great efficiency and sustainability** of having a product that’s evolving without changing its nature: there are no static JPEGs to be churned into HTML/CSS pages by two different teams. Everyone can relate to the money-saving argument.

#### A/B Tests

UniCredit performed A/B tests on the new landing pages, which proved successful for all mobile devices against the former desktop-only version.

> UI Farm’s innovative workflow and unique skills has given us a very clear insight into our customers’ behaviour and preferences, which has considerably boosted our account application conversions.<br>
> Thanks to UI Farm’s approach, we have been able to significantly improve the experience delivered to our customers and prospects, and make changes that may have seemed minor to us but have resulted in significant conversion lifts. UI Farm has truly changed our approach to Interaction Design.
> <cite>Gabriele Rosati, Head of Interaction Design at UniCredit</cite>

## Results

We strongly believe that the new era of multi-device web should massively gain from technologies like responsive web design, and a more **sustainable workflow** as outlined. To achieve this, new methods and a more focussed effort on features previously considered minor, need to be used. Or invented. Or both.

## Skills

<ul class="list-inline">
  {% for skill in page.skillset %}
  <li><mark>{{ skill }}</mark></li>
  {% endfor %}
</ul>