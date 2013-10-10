class CategoriesImagesJoin < ActiveRecord::Migration
  def change
	rename_table :catergories, :categories
	
	create_table :categories_images, :id => false do |t|
      t.references :category, :image
    end
  end
end
