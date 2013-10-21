class CategoriesController < ApplicationController

	def show
		@attachments = Attachment.category(params[:id])
		render 'attachments/index'
	end

end
