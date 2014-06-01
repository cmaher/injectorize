# Injectorize

Use injectorize to inject accessors for class instances while providing default values.

```ruby
  class ClassToInject
    def print_stuff
      puts 'Woo!'
    end
  end

  class OwningClass
    include Injectorize::Injector

    inject ClassToInject
  end

  owner = OwningClass.new
  owner.class_to_inject.print_stuff
```

Replace the instance when desired, for instance, mocks when testing

```ruby
  owner = OwningClass.new
  owner.class_to_inject = MockClassToInject.new
```

## Installation

  gem install injectorize

## Contributing

1. [Fork it](https://github.com/cmaher/injectorize/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
