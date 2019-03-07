class AddDescriptionToPictures < ActiveRecord::Migration[5.2]
  def change
      add_column :pictures, :description, :string
  end
end
