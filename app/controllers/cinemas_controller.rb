class CinemasController < ApplicationController
	before_filter :find_cinema, only: [:show, :ping]
	def index
		@cinemas = Cinema.active
		@showtimes = Cinema.all
	end

	def show
	end

	def ping
		if @cinema.is_active?
			time_lapsed = (Time.now - @cinema.show_time).to_i
			render json: {time: time_lapsed}
		else
			render json: {time: -1}
		end
	end

	private
	def find_cinema
		@cinema = Cinema.find_by_id(params[:id])
	end
end
