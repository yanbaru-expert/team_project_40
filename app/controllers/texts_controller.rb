class TextsController < ApplicationController
  def index
    @texts = Text.order(:genre)
  end
end
