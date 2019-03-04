class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :hike

  def self.find_favourites(user_id, hike_id)
    self.where(user_id: user_id, hike_id: hike_id)
  end
end
