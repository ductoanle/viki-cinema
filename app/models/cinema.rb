class Cinema < ActiveRecord::Base
	has_one :show
	validates_presence_of :name, :show_time

	scope :active,->{where('end_time > ?', Time.now)}
end
