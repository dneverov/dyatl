# d´YATL

d´ Yet Another Todo List

## README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* [x] Ruby version

```
Ruby  2.6.5
Rails 6.0.2.2
```

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Draft

```
rails db:create

rails g scaffold Task title completed_at:datetime
rake db:migrate
```

```
rails s
```

[routes.rb](config/routes.rb)

```
root to: "tasks#index"
```
