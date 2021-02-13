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

- [ ] Set up analytics
- [ ] Make a 'contribute to this page' button that links to the gitlab page for editing without using RStudio etc
- [ ] Make tutorial gifs for contributing to webpage
- [ ] Set up the blog structure (tags, categories etc.)
- [ ] Fix the interesting videos list (split it into tutorials and talks)
- [ ] Add dollar signs to paid courses (split in free, cheap and expensive)
- [ ] Update exam database shiny: (OR MAYBE MAKE A SIMPLE GITLAB_BASED ONE)
    - remove "bunden eksamen"
    - remind that online things are found by plagiarism detectors
    - add cognitive semiotics exams
    - add "old exams" category
- [ ] Career Path: Add Millie's stuff
- [ ] Learning: Book Recommendations: sort by topic
- [ ] Social: AU Environment: sort by topic

### Critical: Technical issues

- [ ] Help and Support: Useful Links: Academic Regulations link, make it link to the search page
- [ ] Set up the upload/download structure for the Exam Database Shiny script

### Critical: Content creation

- [ ] Add online courses to the online courses list
- [ ] Write the reinforced learning front page
- [ ] Write Social System front page
- [ ] The IV-fag list from Anna Stuckert (LINK)
- [ ] Data Elixir (EPIIC)
- [ ] Create International Support content
- [ ] Formal Stuff: make a page with links etc.
- [ ] Formal Stuff: add link overview for mit.au, autumnschedule, scientia etc.

### Visual design

- [ ] Find a good color scheme
- [ ] Implement the color scheme
- [ ] Add little icons to each section

### Critical: Correspondence

- [ ] Assign some CogBloggers

### Decisions

- [ ] Gitlab vs Github
- [ ] Grades on exam projects ? 

### Ideas for the future

- Collect user data (?) - maybe Google Analytics
- Check out Usersnap for bug reporting https://usersnap.com/qa
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
- Make clanedars pwetty
- Make a Frequently Asked Questions subsection in Programming and Statistics
