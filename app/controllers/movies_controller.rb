class MoviesController < ApplicationController
  def get_one_movie
    one_movie = Movie.first
    render json: {movie: one_movie}
  end

  def get_all_movies
    all_movies = Movie.all
    render json: {movies: all_movies}
  end


end
