require 'rspec'
require 'preferencias'
require 'rails/test_unit/railtie'
require 'pry'

RSpec.configure do |config|
  config.color = true
  config.formatter = 'documentation'
  config.before(:each) { Preferencias::Preference.delete_all }
end

module Config
  class Application < ::Rails::Application
  end
end

Config::Application.initialize!

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => ':memory:'
)

load File.dirname(__FILE__) + '/support/schema.rb'
