class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    json_response(@movies)
  end

  def show
    @movie = Movie.find(params[:id])
    json_response(@movie)
  end

  def create
    @movie = Movie.create!(movie_params)
    json_response(@movie)
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def movie_params
    params.permit(:title)
  end
end