# README

Note: *Please* read this readme carefully. 
*Onboarding instructions and tasks are listed throughout this readme.*
The tasks shown throughout the readme are what we (Chelsey & Edith) will need to show that your local env is setup, you can commit to the repo, *and* you have completed onboarding.
If you need assistance with *any* step of onboarding, please reach out to Chelsey, Edith, or your team mates on Slack.

HAPPY CODING!  

# Project: Innocent Tech 

For this cohort, you will be working on the educator user of an application called 'Innocent Tech.'
Innocent Tech is a full-stack application that works to eradicate racial bias in the classroom to better support students of color. 
There will be an Innocent Tech kick off the first week of the apprenticeship.
- [X] I received and accepted the 'Innocent Tech Kickoff' invite


### Coding Practices 
For this apprenticeship, we will use development sprints to get the tasks completed. 
Our sprints run for 2 weeks each, from Tuesday to the following Tuesday. 
After each sprint, we will have a retro* every Wednesday after the sprint ends. 
*We will cover retros more during the Welcome To SFG meeting. 
- [X] I received and accepted calendar invites for Sprint retros


### Technical Requirements + Tools Overview 
At SFG and during the duration of this project, we will be using some technical requirements and tools that most of you are familiar with, and some new tools! Read on for the new additions. :D 

## Tools Overview 

#### Google Suite 
- [X] Received and Read the SFG Handbook
- [X] Accepted calendar invites for 'Welcome To SFG'
- [X] Accepted calendar invite for Apprentice calendar
- [X] Set your Google Calendar settings to everyone, so all SFG staff can access your calendar
- [X] Upload your timesheet document to your acct Google Docs, send link to Chelsey and Edith to access 

#### Figma
We are using Figma as our wireframe tool.
The Innocent Tech Figma invite will be sent to your sfg email address.(Please let us know if you do not!)
NOTE: This is a very expansive wireframe. Feel free to explore more, but for this project, we will let you know which tabs of the wirefrsme to use for reference throughout the program.
- [ ] I received and accepted Figma wireframe invite.
- [ ] I can access ALL the tabs on the Figma wireframe.
***Not Yet***

#### Asana 
We will use Asana as our kan-ban board for this project. 
The Innocent Tech Asana invite will be sent to your sfg email address.(Please let us know if you do not!)
If you're not familiar with Asana, you can find more information here: https://help.asana.com/hc/en-us/articles/14250783001627-How-to-start-using-Asana 
- [X] I received and accepted Asana board invite. 
- [X] I can access the Innocent Tech MVP Asana board. 

#### Heroku 
We will push our changes for testing and production to Heroku. 
The Innocent Tech Heroku invite will be sent to your sfg email address.(Please let us know if you do not!)
You can find more Heroku dev information here: https://devcenter.heroku.com/

- [ ] I received and accepted Innocent Tech App Heroku application invite.
- [ ] I can access Innocent Tech App Heroku dashboard.
**Not Yet**

#### Github
- [X] Local environment has been set up on your computer
- [ ] Created Onboarding pull request for review. 
- [ ] Assigned your PR to Chelsey + Edith  

#### Slack 
One of our communication tools is Slack. You all are familiar with Slack since you all used it during your bootcamp. 
- [X] Accepted invite to Apprentice Slack channel, #sfg-team channel, sfg-watercooler channel, forecastplanning channel
Software For Good team is excited to have you working with us, and would love to lear more about you all! :D
- [X] Introduce yourself on the #sfg-team Slack channel! Share your name, post a wave, pronouns, and your preferrred/favorite programming tool(Vim,Visual Studio Code, etc.)  

## Environment Setup
This setup assumes you are using [Homebrew](https://brew.sh/) on a Mac. 
Other environment setups are TBD.

Clone the repo:

```sh
git clone = git@github.com:softwareforgood/innocent_tech_app.git
```

Alternately, if you don't already have an SSH key setup with Github:
```sh
git clone https://github.com/softwareforgood/innocent_tech_app.git
```

#### Ruby

- [Ruby](https://ruby-doc.org/) (see [.ruby-version](./.ruby-version) for the version used for this app)
- [bundler](https://bundler.io/) — `gem install bundler`

If you don't have a Ruby version manager, you'll want to install `rbenv`. If you
already have `rbenv` or `rvm` installed, skip this step.

To find out if you already have one of them installed, in a terminal run
```sh
which rbenv rvm
```

If you're using `zsh` and you get the following, install `rbenv`:
```sh
rbenv not found
rvm not found
```

If you're using `bash` and there's no output at all, that means you don't have
either version manager installed, and you should install `rbenv`.

**DO NOT INSTALL BOTH RVM AND RBENV ON THE SAME MACHINE OR YOU WILL HAVE A VERY BAD TIME!**

*Check-in: I DO NOT have RVM and RBENV installed.* 
- [ ] Not at all! 
- [ ] Let me double check.... 

_Note: if you have `rvm` installed but would like to switch to `rbenv` (recommended),
just run the following before installing `rbenv`:_


```sh
rvm implode
```

**Install `rbenv`** (see https://github.com/rbenv/rbenv for more info)
```sh
brew install rbenv
```

Both `rbenv` and `rvm` will automatically try to use the version specified in a
local `.ruby-version` file if it exists. If the version specified in `.ruby-version`
is not installed, simply run:

```sh
rbenv install
```
Or for RVM:
```sh
rvm install
```

#### PostgreSQL
See if you have PostgreSQL:

```sh
psql --version
```

If it's not installed, or the version isn't >=16.0, install and run it using Homebrew:

```sh
brew install postgresql@16
brew services stop postgresql
brew services start postgresql@16
```

Create a db user:

```sh
psql -c "[authentication info here]';"
```
**My postico is being weird**

#### Rails

```sh
gem install bundler -v 2.3.7
bundle install # Make sure you're in the innocent_tech_app root directory
```

*If you get an error installing `pg` while running the `bundle install` command, it may be resolved
by running `brew install postgresql`, even if you have already installed `postgresql@16` or another
specific version of `postgresql`. Unlike when you installed `postgresql@16` above, you do not need
to start the `postgresql` service for this to fix your `bundle install` error.*

#### Javascript
You will need Yarn `v1.22.x`, a Node version manager (if you don't already have one, `nvm` is recommended), and Node `v16.x`.

```sh
brew install nvm yarn
nvm install && nvm use # This will install and use the version in the project's `.nvmrc` file
```

#### Add credential keys

Ask Edith or Chelsey for a link to access the app credential keys. Once you have the keys, create three new files:
- `config/credentials/development.key`
- `config/credentials/test.key`
- `config/credentials/staging.key`

Populate each file with the corresponding key. This is *required* before you can set up the db or start up the server.

#### DB setup and seed

```sh
# From project root:
bin/setup
rails db:seed
```

*Check-in:Verify your db is ready to go*
- [ ] My db has been set up!  

#### Start the Rails server 
1. Make sure you have tailwindcss:watch running to pick up styling updates.
```sh
rails tailwindcss:watch
```
2. Start the rails server using the command given below and visit the site with the URL http://localhost:3000
```ruby
rails s
```

**DEV TIP:** Have 3 terminal tabs open: one running tailwindcss:watch, another running the rails server, and the third 
for git, rubocop, tests, or any other one-off commands you'd like to run.

*Check-in:Were you able to start your server?*
- [X] Yes! Ready to go! 
- [ ] No, I need Chelsey, Edith, or one of my team mates to help me

#### Open a Rails console and confirm seeds
If seeds were successful, you should have at least four (4) students in the database.
```bash
rails c
> Student.all
```

#### Close out of Rails Console 
```bash
  cmd + c (mac)
  ctrl + c (windows)
```

*Check-in: Can you start your rails console?*
- [ ] No, something is up
- [X] Yes! Console started with not issue.

#### Run the linter

```bash
rails rubocop
```

*Check-in: Can you start your Rails linter?*
- [X] Yes! Rubocop ready!
- [ ] No, I need Chelsey, Edith, or one of my team mates to help me

#### TailwindCSS 
The CSS Framework we will be using for this project is called [TailwindCSS](https://tailwindcss.com/).
We're using TailwindCSS through the [tailwindcss-rails gem](https://github.com/rails/tailwindcss-rails). 
We recommend reading up on the  gem documentation, and Tailwindcss syntax some before beginning the first sprint. 
When you set up your local environment, Tailwind will be installed for the application. 

  ### Compiling w/ TailwindCSS
  To make sure you have the most up to date stylings, you will need to compile the code so Tailwind recognizes the new changes. 
  To compile, run the command below in another Terminal window. 

  ```sh
    bin/rails tailwindcss:watch
  ```
  More compiling w/ TailwindCSS rails gem can be found here: https://github.com/rails/tailwindcss-rails

#### MiniTest / How To Run Tests 

For this application, we are using the testing library [Minitest](https://github.com/minitest/minitest). 
To run the tests:

Open up a terminal
Navigate to the directory

```bash
rails test
```

or alternatively, 
```bash
Run ruby test_file_name.rb
```

#### Reading Minitest Output
Minitest runs the tests in a random order, and outputs a green dot for a successful test, a red E if there was an error while running the test, and a red F if the test assertion failed.

*Check-in: Are you  looking forward to writing tests?*
- [X] Yes, of course!
- [ ] Its too early to tell 
- [ ] No, not really

#### Deployment Steps (Commit your work)

### Heroku Deployment
When a Pull Request is merged into the `main` branch, it triggers a deploy in the Heroku staging environment.
You can track your deployment in the Heroku UI under the [Activity tab](https://dashboard.heroku.com/apps/innocent-tech-app/activity).

### Readme Deployment
Follow the deployment steps listed below. 
When you create your feature branch, follow this naming format for your branch: learn-earn-onboarding/[yourname]
*You only need commit your Readme file with the checklist. No other files are needed!* 

  - [X] Create a feature branch from main (follow this naming format: learn-earn-onboarding/[yourname])
  - [X] Edit your Readme(select answers to the checklist)
  - [X] Commit your feature branch to the repo
  *Make sure you're only committing your readme*

  - [ ] Open a Pull request. Change your PR title to: Yourname-Onboarding
  - [ ] Request a review from Chelsey + Edith on your PR 

*Check-in: Do you prefer Front-End development or Back-End development?*
- [ ] Front end 
- [X] Back end 
- [] I'm open to either 

*Final Check-in: How did local set up go?*

- [ ] Double checked that *all* the onboarding tasks on this readme
- [X] I answered all of the check-in questions(including this one!) listed throughout this readme.
- [X] I'm ready to submit this readme for review! 
