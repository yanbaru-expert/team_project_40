class WatchedMoviesController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    current_user.watched_movies.create!(movie_id: @movie.id)
    # redirect_back(fallback_location: root_path)
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    current_user.watched_movies.find_by(movie_id: @movie.id).destroy!
    # redirect_back(fallback_location: root_path)
  end
end