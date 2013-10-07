class AddImagesToPictures < ActiveRecord::Migration
	 def self.up
		create_table :images do |t|
		  t.attachment :image
		  t.timestamps 
		end
	end

end
