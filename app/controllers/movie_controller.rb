class MovieController < ApplicationController
  require "net/http"
  require "uri"
  require "json"
  
  def results

    Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")

  end

  def show

  	Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")

  	@movie = Tmdb::Movie.detail(params[:id].to_i)

  	@cast = Tmdb::Movie.cast(params[:id].to_s).first(10)

  	@director = Tmdb::Movie.director(params[:id].to_s)

  	@title = @movie.title

  	@overview = @movie.overview

  	@release = @movie.release_date

  	@rating = @movie.vote_average

  	@genres = @movie.genres

  	render "movie/movie_show"

  end
end
