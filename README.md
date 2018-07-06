# PalindromeAlgo

[![Gem Version](https://badge.fury.io/rb/palindrome_algo.svg)](https://badge.fury.io/rb/palindrome_algo)
[![MIT License](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

#### PalindromeAlgo is a simple algorithm to find and return list of palindromes from your text input.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'palindrome_algo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install palindrome_algo

## Usage

1) Add your text to a hash with `:text` symbol key, then pass the arguments to `PalindromeAlgo.parse(args)` like the example below.  If you don't pass any args, and just run `PalindromeAlgo.parse` it will return sample data for testing.

```
args = { text: "My best friend's name is Anna. Don't you love the civic opera? How much is a kayak? My Spanish level is low, but I have fun. Excuse me, Madam?  Is this yours? Where's your mom today? Let's go for lunch at noon. Did you see that racecar? When was the radar invented? Your face is redder than a tomato. So we somehow refer cases to you? How much is it to repaper the living room? The rotator was connected to the log by a rope 6 ft. I heard the tail rotor buzz again. For later versions and adaptations of the sagas see O. His guitar solos are just unbelievable. As a doctor, Kent strongly believes the tenet of never doing any harm. Wow, you made this by yourself?" }

palindrome_hash = PalindromeAlgo.parse(args)
```

2) The returned data will be in hash format like below:

You can access the data, like so: `palindrome_hash[:results]` and `palindrome_hash[:text]`

```
{
  :results=>
  [
    {:string=>"My best friend's name is Anna", :palindromes=>"anna"},
    {:string=>"Don't you love the civic opera", :palindromes=>"civic"},
    {:string=>"How much is a kayak", :palindromes=>"kayak"},
    {:string=>"My Spanish level is low, but I have fun", :palindromes=>"level"},
    {:string=>"Excuse me, Madam", :palindromes=>"madam"},
    {:string=>"Is this yours", :palindromes=>""},
    {:string=>"Where's your mom today", :palindromes=>"mom"},
    {:string=>"Let's go for lunch at noon", :palindromes=>"noon"},
    {:string=>"Did you see that racecar", :palindromes=>"did, racecar"},
    {:string=>"When was the radar invented", :palindromes=>"radar"},
    {:string=>"Your face is redder than a tomato", :palindromes=>"redder"},
    {:string=>"So we somehow refer cases to you", :palindromes=>"refer"},
    {:string=>"How much is it to repaper the living room", :palindromes=>"repaper"},
    {:string=>"The rotator was connected to the log by a rope 6 ft", :palindromes=>"rotator"},
    {:string=>"I heard the tail rotor buzz again", :palindromes=>"rotor"},
    {:string=>"For later versions and adaptations of the sagas see O", :palindromes=>"sagas"},
    {:string=>"His guitar solos are just unbelievable", :palindromes=>"solos"},
    {:string=>"As a doctor, Kent strongly believes the tenet of never doing any harm", :palindromes=>"tenet"},
    {:string=>"Wow, you made this by yourself", :palindromes=>"wow"}
   ],
 :text=>
  "My best friend's name is Anna. Don't you love the civic opera? How much is a kayak? My Spanish level is low, but I have fun. Excuse me, Madam?  Is this yours? Where's your mom today? Let's go for lunch at noon. Did you see that racecar? When was the radar invented? Your face is redder than a tomato. So we somehow refer cases to you? How much is it to repaper the living room? The rotator was connected to the log by a rope 6 ft. I heard the tail rotor buzz again. For later versions and adaptations of the sagas see O. His guitar solos are just unbelievable. As a doctor, Kent strongly believes the tenet of never doing any harm. Wow, you made this by yourself?"
}
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/4rlm/palindrome_algo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PalindromeAlgo project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/4rlm/palindrome_algo/blob/master/CODE_OF_CONDUCT.md).
