class User < ApplicationRecord
  has_many :texts
  has_many :reads, dependent: :destroy
  has_many :watched_movies, dependent: :destroy
  # user.read_texts で user が「読破済み」の一覧を取得できるようになる
  has_many :read_texts, through: :reads, source: :text
  # user.finished_watching_movies で user が「視聴済み」の一覧を取得できるようになる
  has_many :finished_watching_movies, through: :watched_movies, source: :movie
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
