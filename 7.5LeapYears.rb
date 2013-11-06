#7.5 Leap Years
#20131104

puts 'Please input 2 different years and I will tell you the leap years between those years.'
puts 'Start year: '
year_start = gets.chomp.to_i
puts 'End year: '
year_end = gets.chomp.to_i

year_now = year_start
puts 'Leap years from ' + year_start.to_s + ' to ' +year_end.to_s + ' are:'
while (year_now != year_end)
	if year_now%4 == 0
		if year_now%100 != 0
			puts year_now
		elsif year_now%100 == 0 && year_now%400 == 0
			puts year_now
		end
	end
	year_now = year_now + 1
end

