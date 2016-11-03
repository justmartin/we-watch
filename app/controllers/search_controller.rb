class SearchController < ApplicationController
  require "net/http"
  require "uri"
  require "json"

  def action
  end
  
  def perform
    Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")
  	render "movie/info"

    @response = Tmdb::Search.movie(params[:title])
  
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
