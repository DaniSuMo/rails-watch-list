class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :image_url

  validates :name, uniqueness: true
  validates :name, presence: true
end
