class Event < ActiveRecord::Base
	has_many :user
	has_many :photo
	has_many :guest

	
end
