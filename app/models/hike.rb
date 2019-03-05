class Hike < ApplicationRecord
  has_many :reviews
  has_many :favourites
  has_many :pictures
  validates :city, presence: true

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
