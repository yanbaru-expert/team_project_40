class Text < ApplicationRecord
  belongs_to :movie
  has_many :users
  has_many :reads, dependent: :destroy
  # text.read_users で text を「読破」しているユーザーの一覧を取得できるようになる
  has_many :read_users, through: :reads, source: :user
  validates :genre, presence: true
  validates :content, presence: true
  validates :title, presence: true

  # textを userが「読破」しているときは「ture」,「読破」していないときは「false」
  def read_by?(user)
    reads.find_by(user_id: user.id).present?
  end
end
