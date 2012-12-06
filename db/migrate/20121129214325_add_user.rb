class AddUser < ActiveRecord::Migration
  def up


#  create_table :users do |t|

#      t.timestamps
#  end

add_column :authentications, :token, :string
add_column :authentications, :uid, :string
add_column :authentications, :provider, :string


  end

  def down
  end
end
