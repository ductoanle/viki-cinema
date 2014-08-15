class CinemasController < ApplicationController
	def index
		@cinemas = Cinema.active 
	end

	def show 
		@cinema = Cinema.find_by_id(params[:id])
	end
end
