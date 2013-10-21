class Attachment < ActiveRecord::Base

	has_attached_file :attachment,
		styles:  lambda { |a| a.instance.attachment_content_type =~ %r(image) ? {:small => "x200>", :medium => "x300>", :large => "x400>"}  : {} }
	
	has_and_belongs_to_many :categories, :class_name => 'Category'
	
	def self.category(id)
		joins(:categories).where('`categories`.`id` = ?', id)
	end
	
	protected
	def is_type_of_video?
		attachment.content_type =~ %r(video)
	end

	def is_type_of_image?
		attachment.content_type =~ %r(image)
	end
	
end
