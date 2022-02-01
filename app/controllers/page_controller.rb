class PageController < ApplicationController
  before_action :set_tag, only: %i[categories]

  def Home
    @tags = Tag.where(id: params[:tag_ids]) if params[:tag_ids]
    @categories = Tag.all
    @pagy, @films = pagy Film.all_by_tags(@tags)
  end

  def test
    @tags = Tag.all
  end

  def categories
    @pagy, @films = pagy(Film.joins(:film_tags).where('film_tags.tag_id = ?', @tag.id))
  end
  
  def personal_info
    
  end

  def categories_list
    @tags = Tag.all
  end

  def tag_repeat(tag_id)
    Film.joins(:film_tags).where('film_tags.tag_id = ?', tag_id).size
  end

  private

  def set_tag
    @tag = Tag.find(params[:tag_id])
  end


end
