class AddGoals < ActiveRecord::Migration
  def up

  create_table :goals do |t|
      t.integer :user_id

      t.timestamps
  end

  end

  def down
  end
end