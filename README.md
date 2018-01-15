# IsDown

Check if a website is up and running or not using isitup.org API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'is_down'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install is_down

## Usage

On console:
```
$ is_down www.facebook.com
www.facebook.com is up
```

Or else
```ruby
require 'is_down'

puts IsDown.is_down?("www.facebook.com") # false
puts IsDown.is_up?("www.facebook.com") # true
```

## Common issues
On Windows, Ruby may raise an SSL error. To fix it:
1. Download a cacert from https://curl.haxx.se/docs/caextract.html
2. Set an environment variable 'SSL\_CERT\_FILE' to the path of the downloaded file.
  
## Development

1. Fork this repo
2. Make your changes
3. Make a PR

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Gr3atWh173/is_down. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the IsDown project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Gr3atWh173/is_down/blob/master/CODE_OF_CONDUCT.md).
