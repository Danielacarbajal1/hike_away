class UpdateColumnNameIdFavouritesAndHikeId < ActiveRecord::Migration[5.2]
  def change
    rename_column :favourites, :users_id, :user_id
    rename_column :favourites, :hikes_id, :hike_id
  end
end
