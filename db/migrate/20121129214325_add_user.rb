class AddUser < ActiveRecord::Migration
  def up


#  create_table :users do |t|

#      t.timestamps
#  end

add_column :authentications, :user_id, :int
  end

  def down
  end
end
