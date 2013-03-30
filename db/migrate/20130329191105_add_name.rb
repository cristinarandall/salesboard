class AddName < ActiveRecord::Migration
  def up

add_column :goals, :name, :string
  end

  def down
  end
end
