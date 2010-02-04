require ::File.dirname(__FILE__) + '/vendor/gems/environment'
Bundler.require_env

require 'rubygems'
require 'sinatra'

Sinatra::Application.default_options.merge!(
  :views => File.join(::File.dirname(__FILE__), 'views'),
  :run => false,
  :env => ENV['RACK_ENV']
)

require 'main'
run Sinatra.application
