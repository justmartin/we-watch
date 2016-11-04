class SearchController < ApplicationController
  require "net/http"
  require "uri"
  require "json"

  def action
  end

  def options_for_genre
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
      ["Thriller", 53],
      ["War", 10752],
      ["Western", 37]
    ]
  end
  
  def search_by_title 
    Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")

    @response = Tmdb::Search.movie(params[:title])

    options_for_genre
  
    render "home/index"
  end

  def search_by_genre
    Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")
    @movies = Tmdb::Genre.movies(params[:genre]).results

    options_for_genre

    render "home/index"
  end

  def search_by_actor
    Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")

    @cast = Tmdb::Search.person(params[:actor])

    options_for_genre
  
    render "home/index"
  end

  def search_by_director
    Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")

    @director = Tmdb::Search.person(params[:director])

    options_for_genre
  
    render "home/index"
  end

end
