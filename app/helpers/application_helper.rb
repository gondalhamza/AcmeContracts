module ApplicationHelper

	def self.parse_date_time_to_string
		return self.strftime("%Y-%M-%d %T %z")
	end

	def parse_string_to_date_time(datastring)
		return DateTime.parse(datastring)
	end

	def parse_datetime(datastring)
		return DateTime.parse(datastring).strftime("%Y-%M-%d %T %z")
	end

	def parse_datetime_string_to_hours(datetimestring)
		return DateTime.parse(datetimestring).strftime("%H:%M:%S")
	end


	def time_difference(time_a, time_b)
	  difference = time_b - time_a

	  if difference > 0
	    difference
	  else
	    24 * 3600 + difference 
	  end
	end
end
