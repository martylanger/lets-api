# Let's API: API supporting the Let's web app for group decision-making

Let's is a web app for group decision-making using alternative voting methods, such as approval/disapproval and instant-runoff voting.
The Let's API accepts, stores, and communicates user and election data.

Users of Let's will be able to create, open, and close an election and choose from a plethora of options:
- Which voting method
- How and when the candidates are determined
- How to share with voters and verify ballots
- Whether ballots are secret, open, or visible anonymously
- To whom the results are visible
- When to open and close the voting

Users will also be able to save contacts, groups of contacts, and sets of election preferences for quick implementation.

## Important Links

- [Let's Client Repo](https://github.com/martylanger/lets-client)
- [Deployed Client](https://martylanger.github.io/lets-client/)
- [Let's API Repo](https://github.com/martylanger/lets-api)
- [Deployed API](https://letsapi.herokuapp.com)

## Planning Story

In a previous project, I'd built an app for users to create an election object, but without the capability to actually have nominations or voting. That project had only a single one-to-many relationship in the back-end. When I began work on this project, I initially thought that I would be able to build on the earlier project and race towards a fully functional voting app, despite starting from scratch with React.js and a more complex database structure.

Of course, I needed to learn to walk before I could run, and my first versions of the Let's app had less functionality than the earlier project despite working with the more robust tools. This time, however, before starting to code I had already mapped out a plan for adding all my desired features. My initial schedule was four days of work, with the first day devoted to the back-end and the remaining three left for the front-end. On day one, I set up the GA-provided Rails API template, designed my database, and took my first crack at deploying to Heroku. There were issues.

By the end of the four days, the back-end had consumed more than half of my time, as the classes with which I first made my controllers required user ownership, and that conflicted with my design, in which only the election creator was required to be a registered user. I tried a handful of workarounds - some improvised from searching the Ruby on Rails docs and some found by googling my issues - and unleashed an arsenal of spec tests, curl scripts, Postman requests and browser requests upon my local server, all to no avail. On the final day of the project I obtained advice from a GA instructor to use a different class - one without user ownership, hitherto unbeknownst to me - for my nominations and ballots controllers. Further work will be required to fine-tune the update and delete functions for these unowned resources, but the resources now functioned in a manner compatible with my original design, at least on my local server. I had thought that my deployed API was working, but at the start of my first presentation of my product it was immediately evident that I was mistaken. With additional assistance from another GA instructor, by the end of day five my API was deployed and running smoothly with all my updates on Heroku.

## Technologies Used

- Ruby on Rails
- PostgreSQL
- cURL
- Postman
- RSpec

## Unsolved Problems

As described above, the ownership structure for ballots and choices is still a work in progress.
Later on in development I intend to add the capability for users to keep contacts and groups of contacts.

## ERD

https://i.imgur.com/L4Ft0VO.png
![copy image address](https://i.imgur.com/L4Ft0VO.png "copy image address")
