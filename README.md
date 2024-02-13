# README

## Setting up the app
##### Prerequisites

- [Ruby](https://ruby-doc.org/) (see [.ruby-version](./.ruby-version) for the version used for this app)
- [bundler](https://bundler.io/) — `gem install bundler`

##### Running locally

Clone the app from GitHub to your machine. 
Then run the following commands to create and setup the app locally.

```bash
bundle install
rails db:setup
```

##### Start the Rails server

You can start the rails server using the command given below and visit the site with the URL http://localhost:3000

```ruby
rails s
```

##### Open a Rails console

```ruby
rails c
```

##### Run the linter

```bash
rails rubocop
```

##### Run tests
```bash
rails test
```