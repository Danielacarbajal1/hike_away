class Picture < ApplicationRecord
  belongs_to :hike
  mount_uploader :photo, PhotoUploader
end
