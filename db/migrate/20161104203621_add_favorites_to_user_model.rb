class AddFavoritesToUserModel < ActiveRecord::Migration
  def change

    add_column :users, :favorite_movie_ids, :text

  end
end
