class Read < ApplicationRecord
  belongs_to :user
  belongs_to :text
  validates :user_id, uniqueness: {
    scope: :text_id,
    message: "は同じテキストに２回以上読破はできません"
  }

 
end
