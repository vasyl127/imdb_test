class Tag < ApplicationRecord

  has_many :film_tags, dependent: :destroy
  has_many :films, through: :film_tags

  validates :title, presence: true, length: { minimum: 2 }
end
