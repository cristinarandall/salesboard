class AddType < ActiveRecord::Migration
  def up

#add_column :users, :type, :string
add_column :users, :firstname, :string

  end

  def down
  end
end
