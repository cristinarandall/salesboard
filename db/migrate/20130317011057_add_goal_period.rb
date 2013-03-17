class AddGoalPeriod < ActiveRecord::Migration
  def up

add_column :goals, :period, :string

  end

  def down
  end
end
