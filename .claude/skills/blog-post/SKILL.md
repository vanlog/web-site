---
name: blog-post
description: |
  Write or edit a blog post for this site. Use when drafting a new post under
  content/blog/, restructuring an existing one, or tightening its English.
  Covers the house structure (hook, one-line points, closing sentence), the
  voice (professional, simple, never trivial), the image conventions, and the
  front matter. Invoke before writing the first paragraph, not after.
---

# Writing a blog post for this site

The audience is business owners and managers, not developers. They skim on a phone
between meetings. A post earns its length by being concrete, not by being complete.

## Voice

Professional, simple language, never trivial. Those three pull against each other,
which is the point:

- **Simple** means short words and short sentences, not simple ideas. "Obsidian lets
  you write down concepts and link them to each other" beats "notes reference each
  other through a `[[wiki-link]]` syntax."
- **Never trivial** means every paragraph carries a fact the reader did not have.
  Cut any sentence that only restates the heading or announces what comes next.
- **Professional** means no hype, no exclamation marks, no second-person cheerleading.
  State what happens and let the reader draw the conclusion.

Write in English. Use straight quotes, never curly. Never use em dashes or en dashes:
use a period, a comma, a colon, or parentheses instead. This is a hard rule, not a
preference.

After drafting, run the `humanizer` skill over the text. The patterns it removes
(rule of three, inflated significance, bold-header bullets, generic uplift endings)
are the ones this site's posts keep sliding back into.

## Section structure

Every section follows the same shape. It reads like a slide: a reader who only looks
at the bullets still gets the argument.

```
## Short heading in sentence case

> "A question a real client or colleague would ask?"

One or two sentences that put the reader in a concrete situation.

- One line. A fact, not a category.
- One line. Parallel in form to the others.
- One line. Three or four points, no more.

One sentence that says why it matters.
```

Rules for each part:

**Heading.** Sentence case, short, concrete. "The cost of retrieving knowledge",
not "What scattered knowledge is costing you". No title case, no colons unless the
second half names actual tools.

**Hook.** A question in a blockquote works best, because it is the question the reader
already has. A real quotation works too. Skip the hook when the section is purely
descriptive, but never replace it with a sentence that restates the heading.

**Scene.** Two or three sentences, present tense, with details that could only come
from a real situation: a Friday evening, an old spreadsheet, a June invoice. Specific
detail is what separates this from marketing copy.

**Bullets.** One line each. No bold lead-ins, no `**Term:** explanation` format, no
trailing sentences that spill onto a second line. Each bullet is a fact that stands
alone. Three or four per section. If you need five, the section is two sections.

**Closing sentence.** One sentence, not a paragraph. It states the consequence, and it
is the only place where interpretation is allowed. Never end on generic optimism
("the future is bright", "exciting times ahead"). End on a number, a deadline, or a
risk.

## What not to do

- Do not explain file formats, syntax, or tooling internals. If a business reader
  would not repeat it to a colleague, cut it.
- Do not use bold to make bullets look like slides. The structure does that work; bold
  on every bullet reads as generated.
- Do not stack short dramatic fragments to build tension.
- Do not write a paragraph where the same content fits in four bullets, and do not
  write bullets where one honest paragraph would carry more.
- Do not cite statistics without a source you can name. If the numbers come from a
  workshop or a report, say so in the post or flag it to the author.

## File and front matter

Posts live at `content/blog/YYYY/MM/DD-slug.md`.

```yaml
---
title: "Title Case Here"
author: "Andrea Melloncelli"
date: 2026-07-09
draft: true
banner: /img/blog/2026/07/some-image.png
show_banner: false
categories:
  - innovation
tags:
  - ai
  - productivity
---
```

`show_banner: false` means the banner image does not appear in the body. If the post
refers to an image, place it in the body explicitly rather than relying on the banner.

Start the post with an abstract block, before the first heading:

```html
<div class="abstract">
  <p>Two paragraphs at most. What the thing is, and what it becomes over time.</p>
</div>
```

Separate sections with `---` on its own line. Close the post with the centered CTA
paragraph linking to `/contact/`.

## Images

Images live in `static/img/blog/YYYY/MM/`. Two classes are defined in
`themes/hugo-universal-theme/static/css/custom.css`:

```html
<img src="/img/blog/2026/07/name.png" class="blog-img-large" alt="Describe what the image shows">
<div style="text-align:center;font-size:0.95em;color:#666;">Caption</div>
```

- `blog-img-large` (full column width) for anything with text inside it: graphs,
  screenshots, diagrams. At small size the labels become unreadable, and in a graph
  the labels are the content.
- `blog-img-small` (350px) for illustrations and memes, where nothing needs reading.

The `alt` text describes what is visible, for a reader who cannot see it. The caption
says what to notice, and is not a repeat of the alt text. An empty caption div is fine
if the image speaks for itself; leave it rather than inventing a caption.

Check that screenshot labels are in the same language as the post. An English post
with an Italian screenshot is worth flagging to the author.

## Editing an existing post

Work section by section, and apply the structure above to each one. When restructuring
prose into bullets, some good writing will not survive the cut. Name what you removed
in the summary so the author can put it back. Long paragraphs often hide the strongest
material in the middle, where nobody counts it: that material becomes the bullets, and
the interpretation around it becomes the closing sentence.
