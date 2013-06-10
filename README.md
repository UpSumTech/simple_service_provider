# SimpleServiceProvider

This gem provides a simple interface for your service objects.

[![Build Status](https://travis-ci.org/sumanmukherjee03/simple_service_provider.png)](https://travis-ci.org/sumanmukherjee03/simple_service_provider)
[![Code Climate](https://codeclimate.com/github/sumanmukherjee03/simple_service_provider.png)](https://codeclimate.com/github/sumanmukherjee03/simple_service_provider)
[![Dependency Status](https://gemnasium.com/sumanmukherjee03/simple_service_provider.png)](https://gemnasium.com/sumanmukherjee03/simple_service_provider)
[![Coverage Status](https://coveralls.io/repos/sumanmukherjee03/simple_service_provider/badge.png)](https://coveralls.io/r/sumanmukherjee03/simple_service_provider)


## Installation

Add this line to your application's Gemfile:

    gem 'simple_service_provider'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_service_provider

## Usage
Create a Single Responsible service object class by inheriting from ```SimpleServiceProvider::Base```.
This gem depends on Virtus, so you can use the ```DummyConsultant.attribute``` method to declare the attributes.
Also, you can use Rails like validations for your service object.
The DummyConsultant class needs to define 2 methods - ```DummyConsultant#run``` and ```DummyConsultant#run!```
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
```
The ```DummyConsultant#run``` provides an implementation that does not mutate the service object itself.
The ```DummyConsultant#run!``` provides an implementation that mutates the service object itself.
Or it can also represent a dangerous version of run. One that can raise an error.
If a separate implementation of run! is not needed, then it's implementation defaults to run.

While performing the task on the service, the gem provides 2 convenience methods - ```DummyConsultant#work``` and ```DummyConsultant#work!```
The method ```work!``` is a more dangerous version of ```work```.
```ruby
  dummy = DummyConsultant.new(:foo => "bar")
  dummy.work
  dummy.work!
```
If the service object is not valid, ```work!``` will raise an exception.
The method ```work``` will not raise any exception, but won't perform the task.

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
