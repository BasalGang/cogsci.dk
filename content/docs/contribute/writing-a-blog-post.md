---
title: "Writing a blog post"
weight: 10
---

# Writing a blog post

## File and folder setup

You write a .md file which stands for **.markdown**. Markdown is an established way to write with formatting. You can find instructions on how to write it on [this page](markdown.md).

The name of the file has to be in the following syntax:
\*\*`my-blog-post.md` with dashes instead of
spaces and in all lower-case. This ensures that we can
link between pages optimally.

By following [this guide](_index.md), you have access to the
file structure of the website. Here you will place your .md
file in the in the `/content/posts/` folder. Any content you
wish to reference that is not online (like images and files)
must be placed in the `/static/posts/my-blog-post/` folder.
Then you make references to
them in your [markdown text](markdown.md) by writing the link as
`../posts/my-blog-post/my-image.jpg` (see an example of using
images in your blog post on the [markdown page](markdown.md)).

## Blog post settings

The blog post settings are important to show your blog post
as you want it in [The Attention Spotlight](../../posts/_index.md).
You write them in the top of your .md blog post file. For example:

```
---
author: "Author name"
date: 2020-05-05
title: This is a blog post
next: /next-blog-post-file-name
prev: /previous-blog-post-file-name
categories: ['Category', 'Another Category']
tags: ['Tag', 'Another Tag']
bookHidden: true
---
```

Author, date, and title make good sense. The next and prev are the
blog posts that get linked to at the bottom of this specific blog
post. They are not necessary. The categories and tags are already
mostly well-defined in the blog section (and are visible as filters
on [The Attention Spotlight](../../posts/_index.md)). If you feel
like we need to add another one, [contact us](../contact/_index.md).
bookHidden means that the blog post will not show up in the left menu.

## Finishing up

When you are finished writing the .md file, putting it in
the correct directory, putting the associated files in the
relevant directory in the `static` folder, and you are ready
to share your post with the world, you can follow
[these instructions](_index.md) to create a pull request. Then
your blog post will be reviewed and accepted in
[The Attention Spotlight](../../posts/_index.md).
