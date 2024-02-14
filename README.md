# README

### Project: Innocent Tech 


For this cohort, you will be working on the educator user of an application called 'Innocent Tech.'
Innocent Tech is a full-stack application that works to eradicate racial bias in the classroom to better support students of color. 


### Requirements

Technical requirements for this project. See below for step-by-step first-time setup.

Ruby, Bundler, Rails, PostgresQL, Node, Yarn[include latest versions needed]


### Environment Setup
This setup assumes you are using [Homebrew](https://brew.sh/) on a Mac. 
Other environment setups are WIP.

Clone the repo:

```sh
git clone = git@github.com:softwareforgood/innocent_tech_app.git
```

Alternately, if you don't already have an SSH key setup with Github:
```sh
git clone https://github.com/softwareforgood/innocent_tech_app.git
```

#### Ruby

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

#### TailwindCSS (CSS Framework)
 The CSS Framework we will be using for this project is called TailwindCSS.
 More information on the framework can be found here: https://tailwindcss.com/
 We recommend reading up on the documentation, syntax some before beginning the first sprint. 
 Setting up your local environment should install Tailwind for this application.

#### MiniTest / How To Run Tests 

For this application, we are using the testing library Minitest. 
To run the tests:

Open up a terminal
Navigate to the directory
Run ruby test_file_name.rb

Reading Minitest Output
Minitest runs the tests in a random order, and outputs a green dot for a successful test, a red E if there was an error while running the test, and a red F if the test assertion failed.


#### Deployment Steps 
Note: This is what we (Chelsey & Edith) will need to show that your local env is setup and you have completed onboarding.
From main, create a new branch with the following naming format: learn-earn-onboarding/[yourname]
Once thats created, edit the checklist on [file_name]

Then, complete the next steps:

  --commit your work on a feature branch
  --make a PR to the main branch
  --if PR approved, merge to main
  --cd back to main
  --pull the latest main branch


#### Onboarding Checklist [Draft]

- [ ] Repo cloned
- [ ] All tools needed installed 
- [ ] Create feature branch 
- [ ] Accept Google Calendar invite for Apprenticeship program
- [ ] Joined Slack channel -- posted on channel 
- [ ] Joined Asana board -- assigned themselves a ticket 
- [ ] Commit feature branch to repo
- [ ] Create pull request for review -- sssign to edith + chelsey 
