# RainbowPrinter

Rainbow Printer, it adds some methods to help your output display look likes 7 colours of the rainbow 🌈

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rainbow_printer'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rainbow_printer

## Usage

Easy to print yout text or array with Rainbow Printer.

- For texts:

```
  rainbow_printer "Hello World! I'm Rainbow Printer, I'll adds some methods to help your output display look likes 7 colours of the rainbow ;)"
```

- For Array:

```
  rainbow_printer [1, true, "Rainbow Printer"]
```
Btw, you can use alias `rb_puts` instead of `rainbow_printer`.

- Read from file:

```
  rainbow_printer file_path: 'your_file_path'
```

Demo:

![](https://github.com/dereknguyen269/rainbow_printer/blob/master/demos/demo.png)

Read from file:

File content look like:

```
                m,
               `$b
          .ss,  $$:         .,d$
          `$$P,d$P'    .,md$P"'
           ,$$$$$b/md$$$P^'
         .d$$$$$$/$$$P'
         $$^' `"/$$$'       ____  _     _      _    _
         $:     ,$$:       / ___|(_) __| | ___| | _(_) __ _
         `b     :$$        \___ \| |/ _` |/ _ \ |/ / |/ _` |
                $$:         ___) | | (_| |  __/   <| | (_| |
                $$         |____/|_|\__,_|\___|_|\_\_|\__, |
              .d$$                                       |_|
```
Out put

![](https://github.com/dereknguyen269/rainbow_printer/blob/master/demos/sidekiq.png)

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rainbow_printer.

