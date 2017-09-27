# README

This README would normally document whatever steps are necessary to get the application up and running.

Things you may want to cover:

## Ruby version

> 2.4.1

## Rails version

> 5.1.4

## System dependencies

## Configuration

## Database creation

> Drops and then recreates the database and includes your seeds.rb

```
$ rake db:reset
```

## Database initialization

> How to [Set up Postgres on Mac](https://devcenter.heroku.com/articles/heroku-postgresql#set-up-postgres-on-mac)

> Run postgres: ` $ pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start `

> Stop postgres: ` $ pg_ctl -D /usr/local/var/postgres stop -s -m fast `

## How to run the test suite

> Run all RSpec tests

```
$ bundle exec rspec
```

> Run single RSpec test

```
$ rspec spec/models/idea_spec.rb
```

## Services (job queues, cache servers, search engines, etc.)

## Deployment instructions

> Deploy on Heroku using Ruby version 2.3.4 and Postgres as database

> Follow this description [Detected sqlite3 gem which is not supported on Heroku](https://devcenter.heroku.com/articles/sqlite3)

> Heroku only deploys code that is pushed to the `master` branch of your `heroku` remote.
If you want to deploy code to Heroku from a non-`master` branch of your local repository, use the following syntax to ensure it is pushed to the remote's `master` branch

```
$ git push heroku <branch_name>:master
```

## Run Application
```
$ rails s
```

## How to checkout a specific branch and specific commit

```
$ git checkout <commit sha1>
$ git checkout <branch name>~1 // 1 == first commit
```

## **rails generate scaffold** commands hang when trying to create a model. How to fix?

> To reset the binstubs, just delete your bin/ directory in rails app and run:

```
$ rake app:update:bin
```

### Adding Gravatar to your App

> You need to have an e-mail address registered with Gravatar for this work.

> After setup Gravatar in your app, you need to signup with an e-mail address that is associated with a Gravatar.