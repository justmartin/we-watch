class AddWatchedToUserModel < ActiveRecord::Migration
  def change
  	add_column :users, :watched_movie_ids, :text
  end
end
