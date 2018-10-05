# SoccerScore

The Problem
===========
We want you to create a command-line application that calculates the
ranking table for a soccer league.

Input/output
------------
The input `spec/fixtures/sample-input.txt`
The output ordered from most to least points, `spec/fixtures/expected-output.txt`.

The rules
---------
In this league, a draw (tie) is worth 1 point and a win is worth 3 points. A
loss is worth 0 points. If two or more teams have the same number of points,
they should have the same rank and be printed in alphabetical order (as in the
tie for 3rd place in the sample data).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'soccer_score'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install soccer_score

## Usage

```bash
$ cat input.txt | soccer_score
$ soccer_score input.txt
$ soccer_score input.txt > output.txt
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/soccer_score. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SoccerScore project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/soccer_score/blob/master/CODE_OF_CONDUCT.md).
