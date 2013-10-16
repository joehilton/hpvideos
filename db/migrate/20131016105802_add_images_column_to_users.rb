class AddImagesColumnToUsers < ActiveRecord::Migration
  def change
	add_column :users, :image_file_name, :string, :after => :email
    add_column :users, :image_content_type, :string, :after => :image_file_name
    add_column :users, :image_file_size, :integer, :after => :image_content_type
    add_column :users, :image_updated_at, :datetime, :after => :image_file_size
  end
end
