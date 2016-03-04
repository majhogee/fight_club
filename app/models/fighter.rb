class Fighter < ActiveRecord::Base
  has_many :skills
  belongs_to :fight
  validates :first_name, :last_name, :description, :exp_points, :picture, presence: true
  validates :exp_points, numericality: {less_than: 6}
  validates :exp_points, numericality: {greater_than_or_equal_to: 0}
  accepts_nested_attributes_for :skills, reject_if: :all_blank, allow_destroy: true
  mount_uploader :picture, PictureUploader
  validates_with NumberOfSkillsValidator
  before_save :calculate_fighting_power
end

def calculate_fighting_power
  sum = 0
  self.skills.each do |skill|
    sum = sum + skill.level
  end
  self.fighting_power = sum + self.exp_points
end
