# RuboCop::InstanceVariableName

[![Build Status](https://travis-ci.org/satoryu/rubocop-instance_variable_name.svg?branch=master)](https://travis-ci.org/satoryu/rubocop-instance_variable_name)

A RuboCop extension focused on naming instance variables.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-instance_variable_name'
```

And then execute:

```sh
bundle
```

Or install it yourself as:

```sh
gem install rubocop-instance_variable_name
```

## Usage

Put the following code into your `.rubocop.yml`.

```yaml
require: rubocop-instance_variable_name
```

or

```yaml
require:
  - rubocop-other-extensions
  - rubocop-instance_variable_name
```

## Configuration

In default, acceptable minimum length of instance variable name is 2.
If you want to stretch it, put `AcceptableMinimumLength` into your `.rubocop.yml`.

```yaml
Naming/InstanceVariableName:
  AcceptableMinimumLength: 5
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/satoryu/rubocop-instance_variable_name. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Rubocop::InstanceVariableName project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/satoryu/rubocop-instance_variable_name/blob/master/CODE_OF_CONDUCT.md).
