class UsersController < ApplicationController

	before_filter :authenticate_user!
	
	def index
		@user = User.find(current_user.id)
	end
	
	def new
	
	end
	
	def show 
	
	end
	
	def profile
	
	end
end
