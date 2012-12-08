class AddUser < ActiveRecord::Migration
  def up


#  create_table :users do |t|

#      t.timestamps
#  end

add_column :users, :photo_url, :text
  end

  def down
  end
end
