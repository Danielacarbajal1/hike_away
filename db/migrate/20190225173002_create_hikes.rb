class CreateHikes < ActiveRecord::Migration[5.2]
  def change
    create_table :hikes do |t|
      t.string :photo
      t.string :category
      t.string :city
      t.integer :length
      t.string :description

      t.timestamps
    end
  end
end
