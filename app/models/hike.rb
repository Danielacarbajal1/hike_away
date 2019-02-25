class Hike < ApplicationRecord
  has_many :reviews
  has_many :favourites
end
