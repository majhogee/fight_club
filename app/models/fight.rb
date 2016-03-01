class Fight < ActiveRecord::Base
  belongs_to :fighter
  validates_with DifferentFightersValidator
end
