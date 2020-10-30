class MoviesController < ApplicationController
  def index
    @movies = {"movie": "Rise of the Planet of the Apes."}
    json_response(@movies)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end