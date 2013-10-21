class Category < ActiveRecord::Base
	
	has_and_belongs_to_many :attachments, :class_name => 'Attachment'

end
