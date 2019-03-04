class Review < ApplicationRecord
  belongs_to :user
  belongs_to :hike
  validates :content, presence: true
  validates :stars, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }

  def blank_stars
    5 - stars.to_i
  end
end
