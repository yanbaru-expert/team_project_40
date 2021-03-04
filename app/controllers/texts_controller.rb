class TextsController < ApplicationController
  def index
    @texts = Text.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]).order(:genre)
    @read_text_ids = current_user.reads.pluck(:text_id) 
  end

  def show
    @text = Text.find(params[:id])
    @movies = Movie.where(text_id: @text.id)
    @watched_movie_ids = current_user.watched_movies.pluck(:movie_id)
  end
end
