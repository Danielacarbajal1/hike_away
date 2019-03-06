class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  has_many :favourites
  has_many :reviews
  has_many :pictures
  validates :address, :first_name, :last_name, :photo, presence: true
end
