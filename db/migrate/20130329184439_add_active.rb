class AddActive < ActiveRecord::Migration
  def up

add_column :users, :active, :boolean

  end

  def down
  end
end
