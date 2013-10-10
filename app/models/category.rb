class Category < ActiveRecord::Base
	
	has_and_belongs_to_many :images, :class_name => 'Image'

end
