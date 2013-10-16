class User < ActiveRecord::Base
 devise :database_authenticatable, :registerable,
    :recoverable, :rememberable
	
	has_attached_file :image, :styles => {:small => "230x230>" }
	
	#Slugalicious
	include Slugalicious
	slugged ->(user) { "#{user.email}" }
end
