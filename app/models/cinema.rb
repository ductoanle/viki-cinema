class Cinema < ActiveRecord::Base
	has_one :show
	validates_presence_of :name, :show_time
end
