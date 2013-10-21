class AttachmentsController < ApplicationController

	def index
		@attachments = Attachment.all
	end
	
	def new 
		@attachment = Attachment.new
	end
	
	def create
		@attachment = Attachment.new(upload_params)
		@attachment.save
		
		redirect_to root_path
	end
	
	def show
		@attachment = Attachment.find(params[:id])
	end
	
	def destroy
		
	end

	private
	def upload_params
		params.require(:attachment).permit(:title, :attachment)
	end

end
