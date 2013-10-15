class User < ActiveRecord::Base
 devise :database_authenticatable, :registerable,
    :recoverable, :rememberable
	
	has_attached_file :photo
	
	#Slugalicious
	include Slugalicious
	slugged ->(user) { "#{user.email}" }
end
