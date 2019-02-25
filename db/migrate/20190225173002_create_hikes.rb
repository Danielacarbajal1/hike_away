class CreateHikes < ActiveRecord::Migration[5.2]
  def change
    create_table :hikes do |t|
      t.string :photo
      t.string :city
      t.string :length
      t.string :description

      t.timestamps
    end
  end
end
