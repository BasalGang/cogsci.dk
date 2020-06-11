# CogSite

Content for the Website of Cognitive Science Students at Aarhus University.

## ANNOUNCEMENTS

A1: Added TODO tasks - refer to those to choose a random task you want to take up

**WORK IN PROGRESS**

You can host the site locally by running the HostSiteLocally.Rmd, after what, you can
edit the website's content and see all changes made dynamically. Additionally, you
can download `hugo-extended` with `choco install hugo-extended` if you have
`chocolatey` downloaded. Then it's possible to use `hugo server` in the root
folder and the website is hosted on port 1313 (by default).

## Current state

The technical elements are basically finished. The basic architecture is ready.

Some sub-pages under "reinforced learning" and "the data frame" still needs to
be created but beyond that, they are mostly created (from the CogSite SideStruktur document)

## How to build the site locally

1. Clone this reposititory, `git clone git@gitlab.com:AUcogseers/CogSite.git`
2. In the newly cloned folder (`cd CogSite`), download the theme with `git submodule update --init --recursive`
3. Download the hugo files from within R with `blogdown::install_hugo()`
4. Build the webpages in R with `blogdown::build_site()`
5. Optionally, host a local webserver with `blogdown::serve_site()` and take it back down with `servr::daemon_stop(1)`

## TO DO

### Critical: Implementation and design
- [ ] Set up the blog structure (tags, categories etc.)
- [ ] Add commenting function to the blog
- [ ] Add the calendar
- [ ] Implement exam paper database [Blanka / Sebastian]
- [ ] Fix the interesting videos list (split it into tutorials and talks)
- [ ] Add dollar signs to paid courses (split in free, cheap and expensive)
- [ ] Change "The Library" to "The Local Library"
- [ ] Fix the layour of the Courses List
- [ ] Make the structure to the Formal Stuff
- [ ] Q&A in the Programming section - maybe embed [this Facebook group](https://www.facebook.com/groups/340151913001608/)

### Critical: Technical issues
- [ ] Fix the link to the blog
- [ ] Update the logo link to the actual front page

### Critical: Content creation
- [ ] Gather exam paper database
- [ ] Write a nice front page
- [ ] Add online courses to the online courses list
- [ ] Write the reinforced learning front page
- [ ] Write Social System front page
- [ ] Set up the Career Tab
- [ ] The IV-fag list from Anna Stuckert (LINK)
- [ ] YouTube video list by Peter (LNK)
- [ ] Data Elixir (EPIIC)

### Critical: Correspondence
- [ ] Assign some CogBloggers
- [ ] Talk with Josh
- [ ] Create the domain: cogsci.dk

### Critical: Visual design
- [ ] Create a cool logo
- [ ] Find a good color scheme
- [ ] Implement the color scheme


### Ideas for the future
- Mental Health page [Blanka]
- List of interesting papers (Zotero-based)
- Lecture recordings
- Exam papers: social functionality
- Exam papers: inspirational tree structure

