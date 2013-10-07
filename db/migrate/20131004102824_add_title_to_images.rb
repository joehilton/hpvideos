class AddTitleToImages < ActiveRecord::Migration
  def change
	add_column :images, :title, :string, :after => :id
	drop_table :pictures
  end
end
