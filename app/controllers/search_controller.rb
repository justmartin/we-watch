class SearchController < ApplicationController
  require "net/http"
  require "uri"
  require "json"

  def action
  end
  
  def search_by_title 
    Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")

    @response = Tmdb::Search.movie(params[:title])

    render "movie/info"
  end

  def search_by_actor
    Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")

    @cast = Tmdb::Search.person(params[:actor])
  
    render "movie/info"
  end

  def search_by_director
    Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")

    @director = Tmdb::Search.person(params[:director])
  
    render "movie/info"
  end

end
