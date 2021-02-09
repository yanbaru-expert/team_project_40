class User < ApplicationRecord
  has_many :reads, dependent: :destroy
  # user.read_texts で user が「読破」しているメッセージの一覧を取得できるようになる
  has_many :read_texts, through: :reads, source: :text
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
