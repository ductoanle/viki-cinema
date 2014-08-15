class Show < ActiveRecord::Base
	belongs_to :cinema
	validates_presence_of :name, :player_url, :number
end
