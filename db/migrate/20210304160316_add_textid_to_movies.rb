class AddTextidToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :text_id, :integer
  end
end
