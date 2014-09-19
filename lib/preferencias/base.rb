require 'active_record'

module Preferencias
  class Base < ActiveRecord::Base
    include Preferencias::Preferable

    serialize :preferences, Hash
    after_initialize do
      self.preferences = default_preferences.merge(preferences) if has_attribute?(:preferences)
    end

    self.abstract_class = true
  end
end
