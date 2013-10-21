class Attachment < ActiveRecord::Base

	has_attached_file :attachment,
		styles:  lambda { |a| 
			if ['image/jpeg', 'image/jpg', 'image/gif', 'image/png'].include? a.instance.attachment_content_type
				{:small => "x200>", :medium => "x300>", :large => "x400>"}
			else
				{}
			end
		}
	validates_presence_of :attachment 
	
	has_and_belongs_to_many :categories, :class_name => 'Category'
	
	def self.category(id)
		joins(:categories).where('`categories`.`id` = ?', id)
	end
	
end
