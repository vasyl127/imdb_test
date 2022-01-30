class Film < ApplicationRecord
  has_many :film_tags, dependent: :destroy
  has_many :tags, through: :film_tags

end
