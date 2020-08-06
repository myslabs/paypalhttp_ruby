require_relative './lib/paypalhttp/version'

$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name = "paypalhttp"
  s.summary = "PayPalHttp Client Library"
  s.description = "Used for generated API clients"
  s.version = VERSION
  s.license = "MIT"
  s.author = "PayPal"
  s.files = Dir.glob ["lib/**/*.{rb}", "spec/**/*", "*.gemspec"]

  s.add_dependency 'json', '~> 2.3'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'rake'
  # FIXME: commented this out as it's got a hard lock on json 1.8
  # however the repo is read-only, so we can't really submit PRs to 
  # it.
  # s.add_development_dependency 'releasinator', '0.7.6'
end
