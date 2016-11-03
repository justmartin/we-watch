class SearchController < ApplicationController

  def action
  end
  
  def perform
    require "net/http"
    require "uri"
    require "json"

    Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")

  	byebug

  	render "movie/info"
  end

  def genre
    Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")
    @movies = Tmdb::Genre.movies(params[:genre]).results

    @genres = [
      ["Action", 28], 
      ["Adventure", 12], 
      ["Animation", 16], 
      ["Comedy", 35], 
      ["Crime", 80],
      ["Documentary", 99], 
      ["Drama", 18],
      ["Family", 10751],
      ["Fantasy", 14],
      ["History", 36],
      ["Horror", 27],
      ["Music", 10402],
      ["Mystery", 9648],
      ["Romance", 10749],
      ["Science Fiction", 878],
      ["TV Movie", 10770],
      ["Thriller", 52],
      ["War", 10752],
      ["Western", 37]
    ]

    render "home/index"
  end

end
