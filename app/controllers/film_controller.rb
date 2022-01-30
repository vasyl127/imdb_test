class FilmController < ApplicationController
  before_action :set_film, only: %i[ show ]


  def show
    
  end

  private

  def set_film
    @film = Film.find(params[:id])
  end

end
