class AddRemoveforeignKeyReview < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :user, foreign_key: true
    add_reference :reviews, :hike, foreign_key: true
    remove_reference :reviews, :users, foreign_key: true
    remove_reference :reviews, :hikes, foreign_key: true
  end
end
