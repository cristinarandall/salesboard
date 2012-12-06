class Authentication < ActiveRecord::Migration
  def up


  create_table :authentications do |t|
      t.timestamps
  end

  end

  def down
  end
end
