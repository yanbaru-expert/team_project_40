class Movie < ApplicationRecord
  has_many :users
  has_many :watched_movies, dependent: :destroy 
  # movie.finished_watching_users で movie を「視聴済み」ユーザーの一覧を取得できるようになる
  has_many :finished_watching_users, through: :watched_movies, source: :user
  validates :genre, presence: true
  validates :title, presence: true
  validates :url, presence: true

  # movie を user が「視聴済み」のときは「true」、「未視聴」であれば「false」
  def watched_movie_by?(user)
    watched_movies.find_by(user_id: user.id).present?
  end
end
