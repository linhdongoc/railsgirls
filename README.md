# README

This README would normally document whatever steps are necessary to get the application up and running.

Things you may want to cover:

* Ruby version 2.4.1

* Rails version 5.1.4

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Run Application: rails s

* How to checkout a specific branch and specific commit

```
$ git checkout <commit sha1>
$ git checkout <branch name>~1 // 1 == first commit
```
* 'rails generate scaffold' commands hang when trying to create a model. How to fix?
To reset the binstubs, just delete your bin/ directory in rails app and run:
```
$ rake app:update:bin
```