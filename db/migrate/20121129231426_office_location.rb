class OfficeLocation < ActiveRecord::Migration
  def up

#  create_table :office_locations do |t|
#      t.integer :user_id
#      t.timestamps
#  end

add_column :sales_person, :manager_id, :int
add_column :office_locations, :manager_id, :int

add_column :users, :company, :string

  end

  def down
  end
end
