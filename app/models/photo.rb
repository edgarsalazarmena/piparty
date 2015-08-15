class Photo < ActiveRecord::Base
	belongs_to :event
	has_many :like
	has_many :comment

	mount_uploader :photo, ImageUploader

	
end
