class FilmController < ApplicationController
  before_action :set_film, only: %i[ show ]


  def show
    
  end

  def rating_update
    film = set_film
    star = params[:star_id]
    film.update(rating: rating_formula(film.users_voted, film.rating, star))
    film.update(users_voted: film.users_voted+1)
    redirect_to '/'
  end


  private

  def set_film
    @film = Film.find(params[:id])
  end

  def rating_formula(voteds, rating, star)
    return (voteds.to_i * rating.to_i + star.to_i) / (voteds.to_i + 1)
  end

end
