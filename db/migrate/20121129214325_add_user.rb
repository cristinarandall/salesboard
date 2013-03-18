class AddUser < ActiveRecord::Migration
  def up


#  create_table :users do |t|

#      t.timestamps
#  end

add_column :users, :company, :string
  end

  def down
  end
end
