module Preferences
  class Preference < Base
    serialize :value
    validates :key, presence: true, uniqueness: true
  end
end
