---
title: "Writing on the CogSite"
weight: 10
---

# Writing a markdown file for the CogSite

Refer to the right menu to see the table of contents for this page.

## File setup

The file should be a .md file which stands for **.markdown**. Markdown is a very established way to write with an array of shorthand methods for formatting text. You can find instructions on how to write it on this page.

The file name should be in the following syntax: **`this-is-my-blog-post.md`** with dashes instead of spaces and in all lower-case. Ensures we can link between pages optimally.

This .md file will be placed in the **/content/posts** folder. Any content you need to reference (like images and files) must be placed in the /static folder. Then you can reference them as if you had the files in the root directory: **earlier-exams/top-down-processing.pdf**.

Place your image(s) inside a folder with your blog post's name in the **/static/posts** folder. Then you reference the file by writing: _posts/my-blog-post/my-image.jpg_ inside the blog post.

## Page settings

The page settings are present in the top of the .md (markdown) documents and are not rendered but are used to define how they are shown in the table of contents. For example, this is the current page's page settings in the top of the document.

This is the info that the program uses to generate the blog post. This header in the top of the .md blog post file should look something like this:

```
---
author: "Author name"
date: 2020-05-05
title: This is a cool blog post
next: /next-blog-post-name-with-hyphens
prev: /previous-blog-post-name
categories: ['Contribute', 'Another Category']
tags: ['Examples', 'Example Tag 2']
bookHidden: true
---
```

When writing a normal page in the _/docs_ directory (mostly the core team), you will be using the following:

```
---
title: "Page settings"
type: docs
weight: 1
---
```

You do not need the page settings on every page as they default to the file name and first heading of the page but if you want, here is a description of the possible page settings:

- type: docs
  - Set the page type to blog or something else if it's outside the docs
- weight: 5
  - This decides the page position in the menu compared to files in the same directory
- bookFlatSection: true
  - Decides if it is a sections (bold font) in the menu (like the _CogSite_ text)
- bookCollapseSection: true
  - Creates a collapsing section (like _The Library_)
- bookHidden: true
  - Hide this page in the left menu - if you're planning to use this, consider if it's better to append the content to an existing page
- bookToC: false
  - Hide the table of contents when on this page
- bookComments: false
  - Disable comments (Disqus)
- title: "PAGE SETTINGS"
  - This is the page title shown in the menu on the left if the settings are set to show it

# Writing in markdown

## Text basics

Writing text and clicking ´enter´ to get to the next line just continues your current line. If you write two spaces at the end of the line
and click ´enter´, it becomes a new line.

However, to get a new paragraph like I just did, you have to leave a whole empty line between this text and the previous.

## Headings

You write headings from level 1 to 6 (size and hierarchy) by preceding these headings with the pound (#) symbol X amount of times:

\# Title of my blog post

\## A heading 2 in my blog post

\### And, wow, a heading 3!

These headings show up in the right hand menu.

## Normal formatting

Additionally, there's these normal awesome text formatting things:

- [ ] _This is italicized_
- [ ] **This is phatt**\*\*
- [ ] ~~This is crossed out~~
- [ ] Oh my, there's also a list in the middle of it all
  - [ ] Sub points 2 spaces in
- [x] with checkmarks!

These are written as such:

´´´
\- \[ \] \*This is italicized\*
\- \[ \] \*\*This is phatt\*\*
\- \[ \] \~\~This is crossed out\~\~
\- \[ \] Oh my, there's also a list in the middle of it all
\- \[ \] Sub points 2 spaces in
\- \[x\] with checkmarks!
´´´

Ordered list:

´´´
\1 Text
\2 Text
\3 Text
´´´

I might want to write other stuff as well. Maybe even a [link to some cool stuff](https://gitlab.com/aucogseers/CogSite) by writing \[text\](link). To quickly create links from URLs like this <https://gitlab.com/aucogseers/CogSite>, write `<https://gitlab.com/aucogseers/CogSite>`.
You can also reference other sections on the post by referring to their titles like this: [Writing in markdown](#writing-in-markdown) `[Writing in markdown](#writing-in-markdown)`

You might also want an image like this in your post:

![Lazy blog animal](https://lh3.googleusercontent.com/proxy/BOtnst7Dg40zc6JRJtE_UwSVnA8qjGE1nBtH16I1nnBLUTkntpZkq-gTO1l3RSJwnY9rYtYWu1P21_tHnqnkFUKY7_whPwU4K3wTjZNiDH8v6ynMswtM4hUN0bay3RlUMLtCniSuruc2E4UjNwN2qkFvp35T2WPrIvO67bY)

You can get this by writing \!\[Text shown if image doesn't load\]\(/posts/your-blog-post/link-to-image.jpg\).

You can see how these characters are used by the formatting (\*, \[\], \(\)). If you want to use them without affecting formatting, just but a backslash in front of the symbol as such: \\\*, \\\[\\\], \\\(\\\).

To create a line like this...

---

...write either `***`, `---` or `________`. The output will look the same. And remember to put blank lines before and after the line.

## Special text formatting

I can write in-line code like this ´in-line code´ by writing \´in-line code\´ and create a code block like this...

```javascript
# This is a code block
WriteBlogPost(new DateTime(DateTime.now()));
```

...by writing it like this:

\´\´\´javascript
// Put your javascript code here
// Replace the "javascript" tag with another language (like "python") and it will create syntax highlighting
\´\´\´

Quotes like this...

> This is a multi-line
> quote text

...are written like this:

´´´
\> This is a multi-line
\> quote text
´´´

## Emojis

You can write emojis like these:
| Smiley | Code |
| ------------- | --------------- |
| :innocent: | \:innocent\: |
| :star_struck: | \:star_struck\: |

See more smiley codes [here](https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md).

## Advanced structure formatting

You can write a table like this...

| First row item               | Another one!                  |
| ---------------------------- | ----------------------------- |
| This is some content, though | Even more! When will it stop? |

...by writing:

´´´
\| First row item | Another one! |
\| ---------------------------- | ----------------------------- |
\| This is some content, though | Even more! When will it stop? |
´´´

# Shortcodes

The shortcodes can be used in your .md (markdown) documents to create special functionality. This is a complete list of the possible shortcodes on the CogSite:

## Buttons

Buttons are styled links that can lead to local page or external link.

### Example

```tpl
{{</* button relref=".." [class="..."] */>}}Get Home{{</* /button */>}}
{{</* button relref="." */>}}Contribute{{</* /button */>}}
```

{{< button relref=".." >}}Get Home{{< /button >}}
{{< button relref="." >}}Contribute{{< /button >}}

## Columns

Columns help organize shorter pieces of content horizontally for readability.

```html
{{</* columns */>}} <!-- begin columns block -->
# Left Content
Lorem markdownum insigne...

<---> <!-- magic sparator, between columns -->

# Mid Content
Lorem markdownum insigne...

<---> <!-- magic sparator, between columns -->

# Right Content
Lorem markdownum insigne...
{{</* /columns */>}}
```

### Example

{{< columns >}}

### Left Content

Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
protulit, sed sed aere valvis inhaesuro Pallas animam: qui _quid_, ignes.
Miseratus fonte Ditis conubia.

<--->

### Mid Content

Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter!

<--->

### Right Content

Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
protulit, sed sed aere valvis inhaesuro Pallas animam: qui _quid_, ignes.
Miseratus fonte Ditis conubia.
{{< /columns >}}

## Details

Details shortcode is a helper for `details` html5 element. It is going to replace `expand` shortcode.

### Example

```tpl
{{</* details "Title" [open] */>}}
## Markdown content
Lorem markdownum insigne...
{{</* /details */>}}
```

```tpl
{{</* details title="Title" open=true */>}}
## Markdown content
Lorem markdownum insigne...
{{</* /details */>}}
```

{{< details "Title" open >}}

### Markdown content

Lorem markdownum insigne...
{{< /details >}}

## Hints

Hint shortcode can be used as hint/alerts/notification block.
There are 3 colors to choose: `info`, `warning` and `danger`.

```tpl
{{</* hint [info|warning|danger] */>}}
**Markdown content**
Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
{{</* /hint */>}}
```

### Example

{{< hint info >}}
**Markdown content**
Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
{{< /hint >}}

{{< hint warning >}}
**Markdown content**
Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
{{< /hint >}}

{{< hint danger >}}
**Markdown content**
Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
{{< /hint >}}

## KaTeX

KaTeX shortcode let you render math typesetting in markdown document. See [KaTeX](https://katex.org/)

### Example

{{< columns >}}

```latex
{{</* katex [display] [class="text-center"]  */>}}
f(x) = \int_{-\infty}^\infty\hat f(\xi)\,e^{2 \pi i \xi x}\,d\xi
{{</* /katex */>}}
```

<--->

{{< katex display >}}
f(x) = \int\_{-\infty}^\infty\hat f(\xi)\,e^{2 \pi i \xi x}\,d\xi
{{< /katex >}}

{{< /columns >}}

### Display Mode Example

Here is some inline example: {{< katex >}}\pi(x){{< /katex >}}, rendered in the same line. And below is `display` example, having `display: block`
{{< katex display >}}
f(x) = \int\_{-\infty}^\infty\hat f(\xi)\,e^{2 \pi i \xi x}\,d\xi
{{< /katex >}}
Text continues here.

## Mermaid Chart

[Mermaid](https://mermaidjs.github.io/) is library for generating svg charts and diagrams from text.

### Example

{{< columns >}}

```tpl
{{</* mermaid [class="text-center"]*/>}}
sequenceDiagram
    Alice->>Bob: Hello Bob, how are you?
    alt is sick
        Bob->>Alice: Not so good :(
    else is well
        Bob->>Alice: Feeling fresh like a daisy
    end
    opt Extra response
        Bob->>Alice: Thanks for asking
    end
{{</* /mermaid */>}}
```

<--->

{{< mermaid >}}
sequenceDiagram
Alice->>Bob: Hello Bob, how are you?
alt is sick
Bob->>Alice: Not so good :(
else is well
Bob->>Alice: Feeling fresh like a daisy
end
opt Extra response
Bob->>Alice: Thanks for asking
end
{{< /mermaid >}}

{{< /columns >}}

## Tabs

Tabs let you organize content by context, for example installation instructions for each supported platform.

```tpl
{{</* tabs "uniqueid" */>}}
{{</* tab "MacOS" */>}} # MacOS Content {{</* /tab */>}}
{{</* tab "Linux" */>}} # Linux Content {{</* /tab */>}}
{{</* tab "Windows" */>}} # Windows Content {{</* /tab */>}}
{{</* /tabs */>}}
```

### Example

{{< tabs "uniqueid" >}}
{{< tab "MacOS" >}}

## MacOS

This is tab **MacOS** content.

Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
protulit, sed sed aere valvis inhaesuro Pallas animam: qui _quid_, ignes.
Miseratus fonte Ditis conubia.
{{< /tab >}}

{{< tab "Linux" >}}

## Linux

This is tab **Linux** content.

Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
protulit, sed sed aere valvis inhaesuro Pallas animam: qui _quid_, ignes.
Miseratus fonte Ditis conubia.
{{< /tab >}}

{{< tab "Windows" >}}

## Windows

This is tab **Windows** content.

Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
protulit, sed sed aere valvis inhaesuro Pallas animam: qui _quid_, ignes.
Miseratus fonte Ditis conubia.
{{< /tab >}}
{{< /tabs >}}

# Software

Search for the markdown extension on VSCODE to make your life much easier when writing markdown. It highlights and helps you automatically create the correct syntax.
