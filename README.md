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

### scaffold_tasks

```
rails db:create

rails g scaffold Task title completed_at:datetime
rake db:migrate
```

[routes.rb](config/routes.rb)

```
root to: "tasks#index"
```

```
rails s
```

### bootstrap

[Gemfile](Gemfile)
```
gem 'bootstrap', '~> 4.4', '>= 4.4.1'
```
...

```
yarn add bootstrap@4.4.1 jquery popper.js
```

```
# config/webpack/environment.js

const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))

module.exports = environment
```

```
# app/javascript/packs/application.js - add require("bootstrap") under the 'channels'

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap")
```
