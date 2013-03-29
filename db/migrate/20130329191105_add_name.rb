class AddName < ActiveRecord::Migration
  def up

add_column :topics, :name, :string
  end

  def down
  end
end
