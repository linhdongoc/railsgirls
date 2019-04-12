# Rails Girls [![Build Status](https://semaphoreci.com/api/v1/linhdongoc/railsgirls/branches/master/badge.svg)](https://semaphoreci.com/linhdongoc/railsgirls)

Your cookbook to the world of web development

## System dependencies

## Ruby version

`2.5.1`

## Rails version

`5.2.3`

## PostgreSQL version
```
$ postgres -V
```

`postgres (PostgreSQL) 10.4`


HOW TO [Getting Started with PostgreSQL on Mac OSX](https://www.codementor.io/engineerapart/getting-started-with-postgresql-on-mac-osx-are8jcopb)

``` 
$ pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
$ pg_ctl -D /usr/local/var/postgres stop -s -m fast
```

## Configuration

```
$ git clone https://github.com/linhdongoc/railsgirls.git
$ cd railsgirls
$ bundle install
$ bundle exec rake db:setup
or
$ bundle exec rake db:reset
$ rails s
```

## Run the test suite with RSpec

Run all RSpec tests

```
$ bundle exec rspec
```

Run single RSpec test

```
$ rspec spec/models/idea_spec.rb
```

## Services (job queues, cache servers, search engines, etc.)

## Continuous integration with Semaphoreci
Semaphore lets you test and deploy code at the push of a button with hosted continuous integration and delivery.

[Getting started with Semaphore](https://semaphoreci.com/docs/guide-to-getting-started-with-semaphore.html)


>**Automatically** build, test and deploy your code as you **push it to GitHub**, preventing bugs from being deployed to production.
**Also deploy to Heroku, too**

> Url: `https://semaphoreci.com/linhdongoc/railsgirls`

## Deployment with Heroku
Deploy on Heroku using Ruby on Rails and Postgres as database

[Getting Started on Heroku with Rails 5.x](https://devcenter.heroku.com/articles/getting-started-with-rails5)

> Dashboard Url: `https://dashboard.heroku.com/apps/railsgirls-ld`

> Heroku Git URL: `https://git.heroku.com/railsgirls-ld.git`

```
$ heroku login
$ heroku ps
$ heroku ps:scale web=1
$ git push heroku <branch_name>:master  # by manually push
$ heroku logs --tail
$ heroku open
```

HOW TO prepare PG on Heroku

> PG Dashboard Url: `https://data.heroku.com/datastores/72b86345-1db1-4004-a856-216282b7ce81`

```
$ heroku login
$ heroku pg:info
$ watch heroku pg:info
$ heroku pg:reset DATABASE --confirm railsgirls-ld
$ heroku run:detached rake db:migrate
$ heroku run:detached rake db:seed

$ heroku restart
$ heroku run rails console
```

>To reset database manually about **Heroku PG Dashboard > Settings > Reset Database**

## SEE MORE

[CLI commands for dyno management](https://devcenter.heroku.com/articles/dynos#cli-commands-for-dyno-management)

By falling Migration because of networks/firewall 
[ECONNREFUSED: connect ECONNREFUSED 50.19.103.36:5000](http://www.mmartinez.org/3-methods-to-work-with-heroku-in-networks-with-blocked-ports/), just:

```
$ telnet rendezvous.heroku.com 5000
$ heroku run:detached <task>
```

## Create a Heroku remote

```
$ heroku apps
$ git remote -v

# if you have already created your heroku app, you can easily add a remote to your local repo.
$ heroku git:remote -a railsgirls-ld
$ git push heroku master
```
