# SimpleServiceProvider

This gem provides a simple interface for your service objects.

### Build Status

[![Build Status](https://travis-ci.org/sumanmukherjee03/simple_service_provider.png)](https://travis-ci.org/sumanmukherjee03/simple_service_provider)

## Installation

Add this line to your application's Gemfile:

    gem 'simple_service_provider'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_service_provider

## Usage

```ruby
  class DummyConsultant < SimpleServiceProvider::Base
    attribute :foo, String
    validates :foo, :presence => true

    def run
      puts "Performing the task"
    end

    def run!
      raise "Foo needs to be equal to bar" unless foo == "bar"
      puts "Performing the task!"
    end
  end

  dummy = DummyConsultant.new(:foo => "bar")

  # work and work! are the interfaces to be used for performing the task
  # DummyConsultant#work! is the harsher variant of DummyConsultant#work
  dummy.work # Performing the task
  dummy.work! # Performing the task!
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
Copyright (c) 2013 Suman Mukherjee

MIT License

For further information about the license, look into License.txt
