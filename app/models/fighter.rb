class Fighter < ActiveRecord::Base
	has_many :skills
	mount_uploader :picture, PictureUploader
end
