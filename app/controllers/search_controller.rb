class SearchController < ApplicationController
  require "net/http"
  require "uri"
  require "json"

  def action
  end
  
  def perform
    
    Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")

    @response = Tmdb::Search.movie(params[:title])
	
	  render "movie/info"
  end

end
