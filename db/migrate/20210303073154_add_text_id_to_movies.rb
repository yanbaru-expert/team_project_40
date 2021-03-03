class AddTextIdToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :text_id, :integer
  end
end
