---
title: "Adding content"
weight: 10
---

# Adding content

First, you have to fork the repository as shown in
[this guide](_index.md).

## Adding to lists

If you want to add to a list on the website, note how that list is
currently set up and copy the elements to make your addition
adhere to the current formatting.

For many of the lists, a specific [shortcode](shortcodes.md) is
important. This shortcode is the **`{{ < details >}}`** shortcode.
It is structured as shown below:

```markdown
{{< details title="This is expandable" open=false >}}
This is my hidden content.
{{< /details >}}
```

{{< details title="This is expandable" open=false >}}
This is my hidden content.
{{< /details >}}

The title is what is shown in the expandable menu field and
the open property decides if it starts open or closed. Most
lists have them closed initially.

Another regularly used formatting tool for these lists is the table.
These are described in the [markdown tutorial](markdown.md). Examples
are seen on the
[R cheat site](../programming-and-statistics/r-cheat-site.md) and the
[R packages site](../programming-and-statistics/r-packages.md).

## Adding a page

When writing a normal page in the _/docs_ directory (mostly the core
team), you will be using the following page settings (as described in
the [writing a blog post tutorial](writing-a-blog-post.md)):

```
---
title: "Page settings"
type: docs
weight: 5
---
```

You do not need the page settings on every page as they default to the file name and first heading of the page.

{{< details title="Possible page settings" open=false >}}

| code                      | description                                                                                                        |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| title: "name"             | The title of the page in the left-hand menu                                                                        |
| type: docs                | Set the page type to blog or something else if it's outside the docs                                               |
| weight: 4                 | Decides how far down it is compared to pages on the same hierarchy in the menu. The more weight, the farther down. |
| bookFlatSection: true     | Shows all of its sub-pages in the menu and makes this page bold. Generally not desirable.                          |
| bookCollapseSection: true | Creates an expandable menu item. All sections are currently configured like this.                                  |
| bookHidden: true          | Hides the page in the menu.                                                                                        |
| bookToC: false            | Hides the right-side table of contents.                                                                            |
| bookComments: true        | Shows comments on the page. Generally not relevant on docs pages                                                   |

{{< /details >}}
