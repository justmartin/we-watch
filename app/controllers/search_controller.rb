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

end
