class WatchedMoviesControllers < ApplicationController
  def create
    current_user.watched_movies.create!(watched_movie_id: params[:watched_movie_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.watched_movies.find_by(watched_movie_id: params[:watched_movie_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end