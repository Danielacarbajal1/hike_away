class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :photo
      t.references :hike
      t.timestamps
    end
  end
end
