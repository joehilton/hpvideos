class CategoriesController < ApplicationController

	def show
		@images = Image.category(params[:id])
		render 'images/index'
	end

end
