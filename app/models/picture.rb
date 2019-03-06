class Picture < ApplicationRecord
  belongs_to :hike
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
