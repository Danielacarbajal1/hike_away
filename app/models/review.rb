class Review < ApplicationRecord
  belongs_to :user
  belongs_to :hike
  validates :content, presence: true
  validates :stars, presence: true, inclusion: { in: [0..5] }
end
