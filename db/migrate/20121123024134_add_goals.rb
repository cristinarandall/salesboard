class AddGoals < ActiveRecord::Migration
  def up

  create_table :topics do |t|
      t.integer :user_id
      t.timestamps
  end

  create_table :goals do |t|
      t.integer :user_id
      t.timestamps
  end


add_column :goals, :name, :string
add_column :goals, :quantity, :int

  end

  def down
  end
end
