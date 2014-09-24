class Message < ActiveRecord::Base
	belongs_to :conversation
	belongs_to :user
	mount_uploader :picture, PictureUploader
end
