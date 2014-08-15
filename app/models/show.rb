class Show < ActiveRecord::Base
	has_many :cinema
	validates_presence_of :name, :player_url, :number
end
