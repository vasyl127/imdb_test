class Film < ApplicationRecord
  mount_uploader :img, ImgUploader
  has_many :film_tags, dependent: :destroy
  has_many :tags, through: :film_tags

  validates :title, presence: true, length: { minimum: 2 }
  validates :text, presence: true, length: { minimum: 8 }
  validates :tags, presence: true


  scope :all_by_tags, ->(tag_ids) do
    films = includes(:film_tags, :tags)
    films = films.joins(:tags).where(tags: tag_ids) if tag_ids
    # films = films.joins(:film_tags).where('film_tags.tag_id = ?', @tag.id) if tag_ids
    films.order(:created_at)
  end
end
