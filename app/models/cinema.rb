class Cinema < ActiveRecord::Base
	belongs_to :show
	validates_presence_of :name, :show_time, :end_time

	scope :active,->{where('end_time > ?', Time.now)}
	def is_active?
		Time.now < self.end_time
	end
end
