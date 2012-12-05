class OfficeLocation < ActiveRecord::Migration
  def up

  create_table :office_locations do |t|
      t.integer :user_id

      t.timestamps
  end


  end

  def down
  end
end
