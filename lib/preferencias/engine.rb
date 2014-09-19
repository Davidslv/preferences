require 'preferencias/preferences/preferable_class_methods'
require 'preferencias/preferences/preferable'
require 'preferencias/base'
require 'preferencias/preferences/configuration'
require 'preferencias/preferences/scoped_store'
require 'preferencias/preferences/store'
require 'preferencias/preference.rb'

require 'rails'

module Preferencias
  class Engine < ::Rails::Engine
    initializer "preferences" do
      ::ActiveRecord::Base.send :include, Preferencias::Preferable
    end
  end
end
