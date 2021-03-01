class MoviesController < ApplicationController
  PER_PAGE = 10

  def index
    @movies = Movie.page(params[:page]).per(PER_PAGE)
    @watched_movie_ids = current_user.watched_movies.pluck(:movie_id)
  end
end
