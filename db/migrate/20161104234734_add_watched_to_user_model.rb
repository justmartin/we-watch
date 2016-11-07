class AddWatchedToUserModel < ActiveRecord::Migration
  def change
    
  	add_column :users, :watched_movie_ids, :text
  	remove_column :users, :favorites_movie_ids

  end
end
