class ChangeCategoriesImages < ActiveRecord::Migration
  def change
	rename_table :categories_images, :attachments_categories
	rename_column :attachments_categories, :image_id, :attachment_id
  end
end
