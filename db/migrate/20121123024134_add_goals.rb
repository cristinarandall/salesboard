class AddGoals < ActiveRecord::Migration
  def up



add_column :goals, :total, :int


  end

  def down
  end
end
