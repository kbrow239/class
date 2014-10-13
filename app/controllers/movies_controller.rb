	

    # This file is app/controllers/movies_controller.rb
    class MoviesController < ApplicationController
      def index
        @movies = Movie.all
      end
    end

	def create
  	@movie = Movie.create!(params[:movie])
  	flash[:notice] = "#{@movie.title} was successfully created."
  	redirect_to movies_path
	end
