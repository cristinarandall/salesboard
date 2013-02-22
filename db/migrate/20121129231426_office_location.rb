class OfficeLocation < ActiveRecord::Migration
  def up


add_column :office_locations, :manager_id, :int

  end

  def down
  end
end
