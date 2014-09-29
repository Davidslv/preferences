# Preferências

[![Build Status](https://travis-ci.org/Davidslv/preferences.svg?branch=master)](https://travis-ci.org/davidslv/preferences)
[![Gem Version](https://badge.fury.io/rb/preferencias.png)](http://badge.fury.io/rb/preferencias)
[![Code Climate](https://codeclimate.com/github/Davidslv/preferences/badges/gpa.svg)](https://codeclimate.com/github/Davidslv/preferences)
[![Test Coverage](https://codeclimate.com/github/Davidslv/preferences/badges/coverage.svg)](https://codeclimate.com/github/Davidslv/preferences)

This gem is an extraction of the [Spree Ecommerce](https://github.com/spree/spree) Open Source Software.

I couldn't find anything as robust as their solution so I decided to extract it into a gem.

## Installation

Add this line to your application's Gemfile:

    gem 'preferencias'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install preferencias

Run migrations

    $ rails generate preferencias:migration
    $ bundle exec rake db:migrate db:test:prepare

## Usage

```ruby
class YourModel < ActiveRecord::Base
  serialize  :preferences # create a column as text in your database

  preference :color, :string, default: 'red'
  preference :number_of_pokemons, :integer, default: 151
end

@model = YourModel.create(preferences: {number_of_pokemons: 649})
@model.preferred_number_of_pokemons # => 649
@model.preferred_color # => "red"
```

## Contributing

1. Fork it ( https://github.com/davidslv/preferences/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
