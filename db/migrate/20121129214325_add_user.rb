class AddUser < ActiveRecord::Migration
  def up


#  create_table :users do |t|

#      t.timestamps
#  end

add_column :authentications, :secret, :string
  end

  def down
  end
end
