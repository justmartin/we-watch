class WatchedMoviesController < ApplicationController
  skip_before_action :verify_authenticity_token
  require "net/http"
  require "uri"
  require "json"

  def perform
  end

  def add
  	Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")

  	if current_user.watched_movie_ids.include?(params[:movie_id]) == false
      current_user.watched_movie_ids << params[:movie_id]
    	current_user.save
    end 


  	@movie = Tmdb::Movie.detail(params[:movie_id].to_i)

    @cast = Tmdb::Movie.cast(params[:movie_id].to_s).first(10)

  	@director = Tmdb::Movie.director(params[:movie_id].to_s)

  	@title = @movie.title

  	@overview = @movie.overview

  	@release = @movie.release_date

  	@rating = @movie.vote_average

  	@genres = @movie.genres


  	redirect_to :back
  end
end
