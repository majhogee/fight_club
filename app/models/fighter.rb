class Fighter < ActiveRecord::Base
  has_many :skills
  validates :first_name, :last_name, :description, :exp_points, :picture, presence: true
  accepts_nested_attributes_for :skills, reject_if: :all_blank, allow_destroy: true
  mount_uploader :picture, PictureUploader
  validates_with NumberOfSkillsValidator
end

