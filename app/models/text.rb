class Text < ApplicationRecord
  validates genre, presence: true
  validates content, presence: true
  validates title, presence: true
end
