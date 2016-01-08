# PxjChicagoEmployees

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/pxj_chicago_employees`. To experiment with that code, run `bin/console` for an interactive prompt.

A Ruby wrapper for the Chicago employees public API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pxj_chicago_employees'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pxj_chicago_employees

## Usage

To get all Chicago employee data, use this command:

```ruby
employees = PxjChicagoEmployees::Employee.all
```

To get all Chicago employee data based on a search, use this command:

```ruby
employees = PxjChicagoEmployees::Employee.find("mayor")
```

Replace "mayor" with your own search terms.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pxj_chicago_employees. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

