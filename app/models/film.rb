class Film < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :img, ImgUploader
  has_many :film_tags, dependent: :destroy
  has_many :tags, through: :film_tags

  validates :title, presence: true, length: { minimum: 2 }
  validates :text, presence: true, length: { minimum: 8 }
  validates :tags, presence: true

  scope :all_by_tags, lambda { |tag_ids|
    films = includes(:film_tags, :tags)
    films = films.joins(:tags).where(tags: tag_ids) if tag_ids
    films.order(:created_at)
  }

  def should_generate_new_friendly_id?
    title_changed?
  end
end
