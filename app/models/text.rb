class Text < ApplicationRecord
  belongs_to :user
  has_many :reads, dependent: :destroy
  # text.read_users で text を「読破」しているユーザーの一覧を取得できるようになる
  has_many :read_users, through: :reads, source: :user
  validates :genre, presence: true
  validates :content, presence: true
  validates :title, presence: true
end
