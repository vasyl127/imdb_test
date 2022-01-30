class PageController < ApplicationController
  before_action :set_tag, only: %i[categories]

  def Home
    @pagy, @films = pagy(Film.all)
  end

  def test; end

  def categories
    @pagy, @films = pagy(Film.joins(:film_tags).where('film_tags.tag_id = ?', @tag.id))
  end
  

  private

  def set_tag
    @tag = Tag.find(params[:tag_id])
  end
end
