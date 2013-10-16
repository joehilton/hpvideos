class User < ActiveRecord::Base
 devise :database_authenticatable, :registerable,
    :recoverable, :rememberable
	
	has_attached_file :image, :styles => {:small => "x200>", :medium => "x300>", :large => "x400>"}
	
	#Slugalicious
	include Slugalicious
	slugged ->(user) { "#{user.email}" }
end
