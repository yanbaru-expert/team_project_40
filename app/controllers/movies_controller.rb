class MoviesController < ApplicationController
    PER_PAGE = 10

    def index
        @movies = Movie.page(params[:page]).per(PER_PAGE)
        @base_level = Movie.base_level(params[:page])
    end
end
