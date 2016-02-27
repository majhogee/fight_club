class Fighter < ActiveRecord::Base
  has_many :skills
  validates :first_name, :last_name, :description, :exp_points, :picture, presence: true
  accepts_nested_attributes_for :skills, reject_if: :all_blank, allow_destroy: true
  mount_uploader :picture, PictureUploader
  validate do |fighter|
    NumberOfSkillsValidator.new(fighter).validate
  end
end

class NumberOfSkillsValidator
  def initialize(fighter)
    @fighter = fighter
  end
 
  def validate
   if @fighter.skills.count < 3
      message: "Please add at least 3 skills to create a fighter"
    elsif @fighter.skills.count > 8
      message: "Fighter can not have more that 8 skills"      	
    end
  end
  # ...
end

#, length: { in: 6..20 }