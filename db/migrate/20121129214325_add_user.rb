class AddUser < ActiveRecord::Migration
  def up


  create_table :users do |t|

      t.timestamps
  end

#add_column :users, :persistence_token, :string
#add_column :users, :password_salt, :string
#add_column :users, :crypted_password, :string


  end

  def down
  end
end
