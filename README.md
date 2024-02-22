# README

Note: *Please* read this readme carefully. 
*Onboarding instructions and tasks are listed throughout this readme.*
The tasks shown throughout the readme are what we (Chelsey & Edith) will need to show that your local env is setup, you can commit to the repo, *and* you have completed onboarding.
If you need assistance with *any* step of onboarding, please reach out to Chelsey + Edith through email or on Slack. 

HAPPY CODING! 

### Project: Innocent Tech 

For this cohort, you will be working on the educator user of an application called 'Innocent Tech.'
Innocent Tech is a full-stack application that works to eradicate racial bias in the classroom to better support students of color. 
There will be an Innocent Tech kick off on [event info here]
- [ ] I received and accepted the 'Innocent Tech Kickoff' invite


### Coding Practices 
For this apprenticeship, we will use development sprints to get the tasks completed. 
Our sprints run for 2 weeks each, from Tuesday to the following Tuesday. 
We will have retros the Wednesday after the sprint ends. 
- [ ] I received and accepted calendar invites for Sprint retros


### Technical Requirements + Tools Overview 
At SFG and during the duration of this project, we will be using some technical requirements and tools that most of you are familiar with, and some new tools! Read on for the new additions. :) 

#### Google Suite 
- [ ] Received and Read the SFG Handbook
- [ ] Accepted calendar invites for 'Welcome To SFG'
- [ ] Accepted calendar invite for Apprentice calendar
- [ ] Set your Google Calendar settings to everyone, so all SFG staff can access your calendar
- [ ] Upload your timesheet document to your acct Google Docs, send link to Chelsey and Edith to access 

#### Figma
We use Figma as our wireframe tool.
The Innocent Tech wireframe can be accessed here: [link]
NOTE: This is a very expansive wireframe. Feel free to explore more, but for this project, we will be using *SPRINT 6* as reference for front end changes. 
- [ ] I received and accepted Figma wireframe invite.
- [ ] I can access SPRINT 6 on the Figma wireframe.


### Asana 
We will use Asana as our kan-ban board for this project. 
If you're not familiar with Asana, you can find more information here: https://help.asana.com/hc/en-us/articles/14250783001627-How-to-start-using-Asana 
- [ ] I received and accepted Asana board invite. 
- [ ] I can access the Innocent Tech MVP Asana board. 


#### Heroku 
We will push our changes for testing and production to Heroku. https://devcenter.heroku.com/
For committing changes to Heroku, we recommend getting the Heroku CLI set up on your laptop. 
Instructions can be found here: https://devcenter.heroku.com/articles/heroku-cli 

- [ ] I received and accepted Heroku application invite.
- [ ] I can access Innocent Tech App Heroku dashboard.
- [ ] I have Heroku CLI installed and ready to go locallys.

#### Github
- [ ] Local environment has been set up on your computer
- [ ] Created Onboarding pull request for review. 
- [ ] Assigned your PR to Chelsey + Edith  

#### Slack 
- [ ] Accepted invite to Apprentice Slack channel, #sfg-team channel, sfg-watercooler channel, forecastplanning channel
- [ ] Introduce yourself on the Apprentice Slack channel! Post a wave, hi, etc. to the Apprentice Slack channel. 


#### TailwindCSS 
The CSS Framework we will be using for this project is called TailwindCSS.
More information on the framework can be found here: https://tailwindcss.com/
We recommend reading up on the documentation, and syntax some before beginning the first sprint. 
Setting up your local environment should install Tailwind for this application.


### Environment Setup
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

If it's not installed, or the version isn't >=11.0, install and run it using Homebrew:

```sh
brew install postgresql@12
brew services stop postgresql
brew services start postgresql@12
```

Create a db user:

```sh
psql -c "[authentication info here]';"
```

#### Redis - if not using using docker 

You'll need `redis` in order for `sidekiq` to work.

```sh
brew install redis
brew services start redis
```

#### Rails

```sh
gem install bundler -v 2.3.7
bundle install # Make sure you're in the innocent_tech_app root directory
```

*If you get an error installing `pg` while running the `bundle install` command, it may be resolved
by running `brew install postgresql`, even if you have already installed `postgresql@11` or another
specific version of `postgresql`. Unlike when you installed `postgresql@11` above, you do not need
to start the `postgresql` service for this to fix your `bundle install` error.*

#### Javascript
You will need Yarn `v1.22.x`, a Node version manager (if you don't already have one, `nvm` is recommended), and Node `v16.x`.

```sh
brew install nvm yarn
nvm install && nvm use # This will install and use the version in the project's `.nvmrc` file
```

#### DB setup

Setup DB:

```sh
# From project root:
bin/rails db:setup # runs `rake db:create db:schema:load db:seed
```

or: 

```bash
bundle install
rails db:setup
```

*Check-in:Verify your db is ready to go*
- [ ] My db has been set up!  

##### Start the Rails server 

You can start the rails server using the command given below and visit the site with the URL http://localhost:3000

```ruby
rails s
```
*Check-in:Were you able to start your server?*
- [ ] Yes! Ready to go! 
- [ ] No, I need Chelsey, Edith, or one of my team mates to help me

##### Open a Rails console

```ruby
rails c
```
*Check-in: Can you start your rails console? *
- [ ] No, something is up
- [ ] Yes! Console started with not issue.

##### Run the linter

```bash
rails rubocop
```

*Check-in: Can you start your Rails linter? *
- [ ] Yes! Rubocop ready!
- [ ] No, I need Chelsey, Edith, or one of my team mates to help me

#### MiniTest / How To Run Tests 

For this application, we are using the testing library Minitest. 
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

Reading Minitest Output
Minitest runs the tests in a random order, and outputs a green dot for a successful test, a red E if there was an error while running the test, and a red F if the test assertion failed.

*Check-in: Are you  looking forward to writing tests?*
- [ ] Yes, of course!
- [ ] Its too early to tell 
- [ ] No, not really

#### Deployment Steps 
*Please* double check you can commit to this repo. Then, follow the deployment steps listed below. 
When you create your feature branch, follow this naming format for your branch: learn-earn-onboarding/[yourname]
*You only commit your Readme file with the checklist. No other files are needed!* 

  --commit your work on a feature branch
  --make a PR to the main branch
  --if PR approved, merge to main
  --cd back to main
  --pull the latest main branch

*Check-in: Do you prefer Front-End development or Back-End development?*
- [ ] Front end 
- [ ] Back end 
- [ ] I'm open to either 


*Final Check-in: How did local set up go?*

- [ ] Double checked that *all* the onboarding tasks on this readme
- [ ] I answered all of the check-in questions(including this one!) listed throughout this readme.
- [ ] I'm ready to submit this readme for review! 

