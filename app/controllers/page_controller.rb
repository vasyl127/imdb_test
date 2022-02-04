class PageController < ApplicationController
  before_action :set_tag, only: %i[categories]

  def Home
    @tags = Tag.where(id: params[:tag_ids]) if params[:tag_ids]
    @categories = Tag.all
    @pagy, @films = pagy Film.all_by_tags(@tags)
  end

  def personal_info; end

  private

  def set_tag
    @tag = Tag.find(params[:tag_id])
  end
end
