class Image < ActiveRecord::Base

	has_attached_file :image, :styles => { :small => "x200>", :medium => "x300>", :large => "x400>"}
	has_and_belongs_to_many :categories, :class_name => 'Category'
	
	def self.category(id)
		joins(:categories).where('`categories`.`id` = ?', id)
	end
	
end
