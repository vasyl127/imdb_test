class PageController < ApplicationController
  def Home
    @pagy, @films = pagy(Film.all)
  end

  def test; end
end
