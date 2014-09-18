require 'preferences/preferences/preferable_class_methods'
require 'preferences/preferences/preferable'
require 'preferences/base'
require 'preferences/preferences/configuration'
require 'preferences/preferences/scoped_store'
require 'preferences/preferences/store'
require 'preferences/preference.rb'

require 'rails'

module Preferences
  class Engine < ::Rails::Engine
    initializer "preferences" do
      ::ActiveRecord::Base.send :include, Preferences::Preferable
    end
  end
end
