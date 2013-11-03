class User < ActiveRecord::Base
 devise :database_authenticatable, :registerable,
    :recoverable, :rememberable
	
	has_attached_file :image, :styles => {:small => "x200>", :medium => "x300>", :large => "x400>"}
	has_and_belongs_to_many :favourites
	
	#Slugalicious
	include Slugalicious
	slugged ->(user) { "#{user.email}" }
end
