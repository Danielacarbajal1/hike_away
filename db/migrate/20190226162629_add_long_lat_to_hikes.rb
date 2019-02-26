class AddLongLatToHikes < ActiveRecord::Migration[5.2]
  def change
    add_column :hikes, :longitude, :float
    add_column :hikes, :latitude, :float
    add_column :hikes, :address, :string
  end
end
