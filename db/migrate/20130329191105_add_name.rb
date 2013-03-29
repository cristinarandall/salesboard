class AddName < ActiveRecord::Migration
  def up

add_columns :topics, :name, :string
  end

  def down
  end
end
