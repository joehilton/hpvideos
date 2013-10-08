class ImagesController < ApplicationController

	def index
		@images = Image.all
	end
	
	def new 
		@image = Image.new
	end
	
	def create
		@image = Image.new(upload_params)
		@image.save
		
		redirect_to root_path
	end
	
	def show
		@image = Image.find(params[:id])
	end
	
	def destroy
		@image = Image.find(params[:id]).destroy
		redirect_to root_path
	end

	private
	def upload_params
		params.require(:image).permit(:title, :image)
	end

end
