class AddGoals < ActiveRecord::Migration
  def up



add_column :goals, :topic_id, :int
  end

  def down
  end
end
