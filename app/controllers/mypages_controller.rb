class MypagesController < ApplicationController
  def index
   
    # ユーザーが読破済みのテキスト教材のジャンルをカウント
    # 全てのテキスト教材のジャンルをカウント
    @genreCount =
    {
      userTextGenre:  current_user.read_texts.group(:genre).count,
      allTextGenre:   Text.group(:genre).count,
      userMovieGenre: current_user.finished_watching_movies.group(:genre).count,
      allMovieGenre:  Movie.group(:genre).count
    }
    
  end
  
end
