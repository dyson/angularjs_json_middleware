### angularjs_json_middleware: Rack middleware for AngularJS JSON vulnerability protection.

Prepend AngularJS JSON vulnerability protection string \")]}',\\n\" to all JSON responses.
See [https://docs.angularjs.org/api/ng/service/$http](https://docs.angularjs.org/api/ng/service/$http).

----

#### Requirements

Rack

#### Installation

##### Gemfile

Add to your Gemfile:

```ruby
gem 'angularjs_json_middleware'
```

Or lock it to the current backwards compatible version:

```ruby
gem 'angularjs_json_middleware', '~> 0.0.1'
```
##### Config

Add the middleware to the stack. For rails add it to `config/application.rb`.

```ruby
class Application < Rails::Application
  ...
  config.middleware.use AngularjsJsonMiddleware
  ...
end
```

#### License

The MIT License (MIT)


