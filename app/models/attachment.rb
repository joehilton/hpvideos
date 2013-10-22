class Attachment < ActiveRecord::Base

	has_attached_file :attachment,
		styles:  	lambda { |a| a.instance.is_image? ? {:small => "x200>", :medium => "x300>", :large => "x400>"}  : {:thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10}, :medium => { :geometry => "300x300#", :format => 'jpg', :time => 10}}},
		:processors => lambda { |a| a.is_video? ? [ :ffmpeg ] : [ :thumbnail ] }
		
	has_and_belongs_to_many :categories, :class_name => 'Category'
	
	def self.category(id)
		joins(:categories).where('`categories`.`id` = ?', id)
	end
	
	def is_video?
		attachment.instance.attachment_content_type =~ %r(video)
	end

	def is_image?
		attachment.instance.attachment_content_type =~ %r(image)
	end
	
end
