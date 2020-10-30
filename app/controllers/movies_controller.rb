class MoviesController < ApplicationController
  def index
    if params[:title]
      @movies = Movie.search(params[:title])
      if @movies.blank?
        render status: 404, json: {
          message: "No movies found with title: #{params[:title]}"
        }
      else
        json_response(@movies)
      end
    else
      @movies = Movie.all
      json_response(@movies)
    end
  end

  def show
    @movie = Movie.find(params[:id])
    json_response(@movie)
  end

  def create
    @movie = Movie.create!(movie_params)
    json_response(@movie, :created)
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update!(movie_params)
      render status: 200, json: {
        message: "Movie title updated successfully"
      }
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end

  def random
    @movies = Movie.all
    json_response(@movies.sample)
  end

  private
  def movie_params
    params.permit(:title)
  end
end