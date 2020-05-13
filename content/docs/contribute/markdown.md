---
title: "Markdown"
weight: 10
---

# Writing in markdown

## Text basics

Writing text and clicking `enter` to get to the next line just continues your current line. If you write two spaces at the end of the line
and click `enter`, it becomes a new line.

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

```
\- \[ \] \*This is italicized\*
\- \[ \] \*\*This is phatt\*\*
\- \[ \] \~\~This is crossed out\~\~
\- \[ \] Oh my, there's also a list in the middle of it all
\- \[ \] Sub points 2 spaces in
\- \[x\] with checkmarks!
```

Ordered list:

```
\1 Text
\2 Text
\3 Text
```

I might want to write other stuff as well. Maybe even a [link to some cool stuff](https://gitlab.com/aucogseers/CogSite) by writing \[text\](link). To quickly create links from URLs like this <https://gitlab.com/aucogseers/CogSite>, write `<https://gitlab.com/aucogseers/CogSite>`.
You can also reference other sections on the post by referring to their titles like this: [Writing in markdown](#writing-in-markdown) `[Writing in markdown](#writing-in-markdown)`

You might also want an image like this in your post:

![Lazy blog animal](https://p1.pxfuel.com/preview/441/719/609/animal-themes-animal-one-animal-mammal-animal-wildlife-panda-animal-plant.jpg)

You can get this by writing \!\[Text shown if image doesn't load\]\(/posts/your-blog-post/link-to-image.jpg\).

You can see how these characters are used by the formatting (\*, \[\], \(\)). If you want to use them without affecting formatting, just but a backslash in front of the symbol as such: \\\*, \\\[\\\], \\\(\\\).

To create a line like this...

---

...write either `***`, `---` or `________`. The output will look the same. And remember to put blank lines before and after the line.

## Special text formatting

I can write in-line code like this `in-line code` by writing \`in-line code\` and create a code block like this...

```javascript
# This is a code block
WriteBlogPost(new DateTime(DateTime.now()));
```

...by writing it like this:

\`\`\`javascript
// Put your javascript code here
// Replace the "javascript" tag with another language (like "python") and it will create syntax highlighting
\`\`\`

Quotes like this...

> This is a multi-line
> quote text

...are written like this:

```
\> This is a multi-line
\> quote text
```

## Emojis

You can write emojis like these:

| Smiley        | Code            |
| ------------- | --------------- |
| :innocent:    | \:innocent\:    |
| :star_struck: | \:star_struck\: |

See more smiley codes [here](https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md).

## Advanced structure formatting

You can write a table like this...

| First row item               | Another one!                  |
| ---------------------------- | ----------------------------- |
| This is some content, though | Even more! When will it stop? |

...by writing:

```
\| First row item               | Another one!                  |
\| ---------------------------- | ----------------------------- |
\| This is some content, though | Even more! When will it stop? |
```
