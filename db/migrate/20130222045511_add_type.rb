class AddType < ActiveRecord::Migration
  def up


add_column :users, :lastname, :string

#add_column :users, :type, :string

  end

  def down
  end
end
