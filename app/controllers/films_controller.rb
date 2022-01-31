class FilmsController < ApplicationController
  before_action :set_film, only: %i[show rating_update]
  before_action :authenticate_user!, only: %i[rating_update]

  def show; end

  def rating_update
    star = params[:star_id]
    @film.update(rating: rating_formula(@film.users_voted, @film.rating, star))
    @film.update(users_voted: @film.users_voted + 1)
    redirect_to root_path
  end

  private

  def set_film
    @film = Film.find(params[:id])
  end

  def rating_formula(voteds, rating, star)
    ((voteds.to_i * rating.to_i) + star.to_i) / (voteds.to_i + 1)
  end
end
