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

## Run Application
```
$ rails s
```

## How to checkout a specific branch and specific commit

```
$ git checkout <commit sha1>
```

## 'rails generate scaffold' commands hang when trying to create a model. How to fix?

> To reset the binstubs, just delete your bin/ directory in rails app and run:

```
$ rake app:update:bin
```

### Adding Gravatar to your App

> You need to have an e-mail address registered with Gravatar for this work.

> After setup Gravatar in your app, you need to signup with an e-mail address that is associated with a Gravatar.