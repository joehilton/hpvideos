class UsersController < ApplicationController

	before_filter :authenticate_user!
	
	def index
		@user = User.find(current_user.id)
	end
	
	def update
	
		if (!User.exists?(params[:id]))
			@user = User.find_from_slug(params[:id])
		else
			@user = User.find(params[:id])		
		end
		
		@user.update(params[:user].permit(:image))
		redirect_to users_path
	end
	
end
