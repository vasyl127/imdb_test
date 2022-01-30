class PageController < ApplicationController
  def Home
    # @films = Film.all
    @pagy, @films = pagy(Film.all)
  end

  def test

  end
end
