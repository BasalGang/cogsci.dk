---
weight: 20
bookCollapseSection: true
title: "Contribute"
---

# Contribute

How can you contribute by putting something on this website?

## Short answer
Send a pull-request on [gitlab](https://gitlab.com/aucogseers/CogSite)

## Slightly longer answer
The website is powered by Hugo, which reads a folder full of Markdown (.md) files, and turns them into the files needed for a beautiful website (.html).

This happens automatically, so all you need to do is commit your content as a markdown file, and send in those changes.

## Step-by-step answer

1. First, fork the repository by clicking the "Fork" button in the top right on [gitlab](https://gitlab.com/aucogseers/CogSite).
2. Now you have "your version" at `https://gitlab.com/<yourusername>/CogSite`. Clone that, for example with `git clone git@gitlab.com:<yourusername>/CogSite.git`
3. Follow the instructions on the ["Writing on the CogSite" page](writing-on-the-cogsite.md) or copy the [example blog post file](example-blog-post.md) to create your own post. TODO: How to put your article somewhere else than the blog?
4. (Optional) Build the site locally, so you can see your changes in action before sending them live. See the main README on [gitlab](https://gitlab.com/aucogseers/CogSite).
5. When you're satisfied, commit your changes and push them to the repository.
6. Now go to the gitlab repository, under "Merge Requests" to the left, click "New merge request". Make sure the "Source Branch" comes from your fork, ie `<yourusername>/CogSite`, and the "Target Branch" is the official `aucogseers/CogSite`. Once you've submitted your merge request, your contribution will go live as soon as someone with commit access on the project approves the merge request.

If you're a regular contributor, you can skip steps 1 and 6, and instead clone the main repository directly and push changes back live.

## Example

TODO: Step by step example of adding an exam project or something

## More resources

This is a list of instruction pages for your specific project:

- [Writing in markdown](writing-in-markdown.md)
- [Writing a blog post](writing-a-blog-post.md)
  - [Example blog post](example-blog-post.md)
- [Page settings](page-settings.md)
- [Shortcodes](shortcodes.md)
