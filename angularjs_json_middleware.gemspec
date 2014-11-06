$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "angularjs_json_middleware/version"

Gem::Specification.new do |s|
  s.name        = "angularjs_json_middleware"
  s.version     = AngularjsJsonMiddleware::VERSION
  s.authors     = ["Dyson Simmons"]
  s.email       = ["dysonsimmons@gmail.com"]
  s.homepage    = "https://github.com/dyson/angularjs_json_middleware"
  s.summary     = "Rack middleware for AngularJS JSON vulnerability protection."
  s.description = "Prepend AngularJS JSON vulnerability protection string \")]}',\\n\" to all JSON responses."
  s.license     = "MIT"

  s.files = Dir["lib/angularjs_json_middleware.rb", "MIT-LICENSE"]

  s.add_dependency "rack"
end
