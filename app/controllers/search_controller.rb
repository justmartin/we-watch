class SearchController < ApplicationController
  require "net/http"
  require "uri"
  require "json"

  before_action :options_for_genre, :set_api_key, :favorites_watched

  def action
  end
  
  def search_by_title 
    @response = Tmdb::Search.movie(params[:title])
  
    render "home/index"
  end
  
  def search_by_title 
    @titles = Tmdb::Search.movie(params[:title])
  
    render "home/index"
  end

  def search_by_genre
    @movies = Tmdb::Genre.movies(params[:genre]).results


    render "home/index"
  end

  def search_by_actor
    @cast = Tmdb::Search.person(params[:actor])
  
    render "home/index"
  end

  def search_by_director
    @director = Tmdb::Search.person(params[:director])
  
    render "home/index"
  end

  private

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

  def set_api_key
        Tmdb::Api.key("1ad5d2d6fd2891066add1b5d16fe125b")
  end

  def favorites_watched
     if current_user
      @favorites = current_user.favorite_movie_ids.map do |id|
        Tmdb::Movie.detail(id)
      end

      @watched = current_user.watched_movie_ids.map do |id|
        Tmdb::Movie.detail(id)
      end
    end
  end

end
