class Film < ApplicationRecord
  mount_uploader :img, ImgUploader
  has_many :film_tags, dependent: :destroy
  has_many :tags, through: :film_tags

  validates :title, presence: true, length: { minimum: 2 }
  validates :text, presence: true, length: { minimum: 8 }
  validates :tags, presence: true
end
