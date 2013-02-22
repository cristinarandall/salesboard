class AddUser < ActiveRecord::Migration
  def up


#  create_table :users do |t|

#      t.timestamps
#  end

add_column :users, :last_name, :string
  end

  def down
  end
end
