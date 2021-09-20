# Fontawesome::Rails::Helpers

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/fontawesome/rails/helpers`. To experiment with that code, run `bin/console` for an interactive prompt.

This gem is built for helping using awesome fonts 5+ in rails. If you use Bootstrap 4+, you can use Bootstrap's style classes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fontawesome-rails-helpers'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install fontawesome-rails-helpers

## Usage

Minimal usage;

```erb
<%= fab_icon 'twitter' %>
```

With icon annotate,

```erb
<%= fab_icon 'twitter', text: 'Twitter' %>
```

With icon sizing,

```erb
<%= fab_icon 'twitter', text: 'Twitter', ratio: '2x' %> or
<%= fab_icon 'twitter fa-2x', text: 'Twitter' %> or
```

With icon animation, two options; `spin` or `pulse`

```erb
<%= fab_icon 'twitter fa-spin', text: 'Twitter', ratio: '2x'>
<%= fab_icon 'twitter fa-pulse', text: 'Twitter', ratio: '2x'>
```

With combining Bootstrap 4+ classes for icons with text,

```erb
<%= fas_icon('camera', text: 'camera', class: 'badge rounded-pill bg-primary') %>
```

With inline styles for icons with text,

```erb
<%= fas_icon('camera', text: 'camera', style: 'color: dodgerblue') %>
```

With inline styles or classes only for text,

```erb
<%= fas_icon('camera', text: 'camera', text_class: 'text-danger') %>
<%= fas_icon('camera', text: 'camera', text_style: 'color: dodgerblue') %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fontawesome-rails-helpers. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/fontawesome-rails-helpers/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Fontawesome::Rails::Helpers project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/fontawesome-rails-helpers/blob/master/CODE_OF_CONDUCT.md).
