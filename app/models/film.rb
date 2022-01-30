class Film < ApplicationRecord
  mount_uploader :img, ImgUploader
  has_many :film_tags, dependent: :destroy
  has_many :tags, through: :film_tags

end
