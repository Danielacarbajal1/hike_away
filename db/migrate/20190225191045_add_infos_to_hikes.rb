class AddInfosToHikes < ActiveRecord::Migration[5.2]
  def change
    add_column :hikes, :name, :string
    add_column :hikes, :km, :float
  end
end
