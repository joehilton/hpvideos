class FavouritesController < ApplicationController

	before_filter :authenticate_user!

	def update
		@user = User.find(current_user.id)
		
		if (!@user.attachments.where(:id => params[:id]).present?)
			@user.attachments << Post.find(params[:id])
			@user.attchments.build
		end
		
		redirect_to_users_path
	end	
	
	def delete
		@user = User.find(current_user.id)
		@user.attachment.delete(params[:id])
		redirect_to_users_path
	end
end
