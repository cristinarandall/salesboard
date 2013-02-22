class OfficeLocation < ActiveRecord::Migration
  def up


add_column :office_locations, :location, :string
add_column :office_locations, :name, :string
  end

  def down
  end
end
