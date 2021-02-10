class TextsController < ApplicationController
  def index
    @texts = Text.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]).order(:genre)
    @text = Text.find_by(params[:id])
  end

  def show
    @text = Text.find(params[:id])
  end
end
