desc 'Create cinema'

task :create_cinema, [:name, :show_id, :to_start] => :environment do |task, args|
	puts "Args were: #{args}"
	start_from_now = args.to_start.to_i || 60
	show_id = args.show_id.to_i || 6
	show = Show.find_by_id(show_id) 
	
	show_time = Time.now + start_from_now.to_i.seconds 
	end_time = show_time + show.duration
  name = args.name || 'Test Cinema'	

	Cinema.create(name: name, show_time: show_time, end_time: end_time,show_id: show.id)	

end
