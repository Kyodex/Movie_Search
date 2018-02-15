class HomeController < ApplicationController
  def index
  end

  def search
    @search = movie_params[:content]
    @movies = SearchMovie.new(@search).perform
    @img = "https://image.tmdb.org/t/p/w500/"
  end

private

  def movie_params
    params.require(:movie).permit(:content)
  end
end
