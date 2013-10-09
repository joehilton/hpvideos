class CreateCatergories < ActiveRecord::Migration
  def change
    create_table :catergories do |t|

      t.timestamps
    end
  end
end
