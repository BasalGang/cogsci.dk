# CogSite

Content for the Website of Cognitive Science Students at Aarhus University.

## ANNOUNCEMENTS

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
- [ ] Add the calendar
- [ ] Fix the interesting videos list (split it into tutorials and talks)
- [ ] Add dollar signs to paid courses (split in free, cheap and expensive)
- [ ] Add "job opportuinities" to Career
- [ ] Book Reccomendations: Fix layout
- [ ] Earlier Exam Projects: split into "Student Projects" and "exam examples"
- [ ] Earlier Exam Projects: Student Projects: remove all "bunden eksamen"
- [ ] Earlier Exam Projects: Student Projects: reminder that it can be plagiarized yet
- [ ] Earlier Exam Projects: Student Projects: add cognitive semiotics
- [ ] Earlier Exam Projects: Exam Examples: add copyright
- [ ] Earlier Exam Projects: Exam Examples: add rules for adding person names
- [ ] Earlier Exam Projects: Student Projects: make an "older courses" category
- [ ] Set up "people" in Hugo or similar
- [ ] Make intro page to tabs follow the same structure everywhere
- [ ] Formal Stuff: split into Master's and Bachelor's
- [ ] Fix the contacts thing

### Critical: Technical issues

- [ ] Fix the link to the blog
- [ ] Update the logo link to the actual front page
- [ ] Change "MIT" to "MIT Courseware" in Online Learning Platforms
- [ ] Formal Stuff: Academic Regulations link, make it link to the search page
- [x] Move Zotero from "Tools" to "Academic stuff -> Writing tools"
- [x] Find a way to use Shiny in Blogdown
- [ ] Set up the upload/download structure for the Exam Database Shiny script

### Critical: Content creation

- [ ] Gather exam paper database
- [ ] Update the front page
- [ ] Add online courses to the online courses list
- [ ] Write the reinforced learning front page
- [ ] Write Social System front page
- [ ] Set up the Career Tab
- [ ] The IV-fag list from Anna Stuckert (LINK)
- [ ] Data Elixir (EPIIC)
- [ ] Create International Support content
- [ ] Formal Stuff: make a page with links etc.
- [ ] Formal Stuff: add link overview for mit.au, autumnschedule, scientia etc.

### Visual design

- [ ] Use a placeholder logo
- [ ] Create a cool logo
- [ ] Find a good color scheme
- [ ] Implement the color scheme
- [ ] Add little icons to each section

### Critical: Correspondence

- [ ] Assign some CogBloggers
- [ ] Create the domain: cogsci.dk
- [ ] Check if its okay to share the online courses/platforms
- [ ] Ask Orla about International Support content
- [ ] Talk to Rebekah/Millie about a job-position-blog thing

### Ideas for the future

- Mental Health page [Blanka]
- List of interesting papers (Zotero-based)
- Lecture recordings
- Exam papers: social functionality
- Exam papers: inspirational tree structure
- Add commenting function to the blog - discuss moderation options
- Add a Stackexchange (CogExchange) for Cognitive Science students
- Make a CogPodcast
- Philosophy Podcast (?)
- Personalized logins
- Make Logo Competition
