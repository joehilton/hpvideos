class ChangePaperclipColumns < ActiveRecord::Migration
  def change
	rename_column :attachments, :image_file_name, :attachment_file_name
	rename_column :attachments, :image_content_type, :attachment_content_type
	rename_column :attachments, :image_file_size, :attachment_file_size
	rename_column :attachments, :image_updated_at, :attachment_updated_at
  end
end
