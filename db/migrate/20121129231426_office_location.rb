class OfficeLocation < ActiveRecord::Migration
  def up

#  create_table :office_locations do |t|
#      t.integer :user_id
#      t.timestamps
#  end

add_column :sales_people, :manager_id, :int


  end

  def down
  end
end
