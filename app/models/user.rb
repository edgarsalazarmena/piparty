class User < ActiveRecord::Base
	belongs_to :event

	mount_uploader :photo, ImageUploader
end
