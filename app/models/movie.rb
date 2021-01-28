class Movie < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true
  validates :url, presence: true

  def self.base_level(page)
    (self.page(page).current_page - 1) * 10
  end
end
