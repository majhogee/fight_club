class Skill < ActiveRecord::Base
  belongs_to :fighter
  validates :name, :level, presence: true
end

