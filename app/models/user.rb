class User < ActiveRecord::Base
 devise :database_authenticatable, :registerable,
    :recoverable, :rememberable
	
	#Slugalicious
	include Slugalicious
	slugged ->(user) { "#{user.email}" }
end
