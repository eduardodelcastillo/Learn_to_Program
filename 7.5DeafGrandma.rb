#7.5 Deaf Grandma

bye_count = 0
puts 'HUH?  SPEAK UP, SONNY!'
while true
  input = gets.chomp
  if input == 'BYE'
  	bye_count = bye_count + 1
  	if bye_count == 3
      puts 'OH, BYE!'
      break
    else
       puts 'HUH?  SPEAK UP, SONNY!' 	
    end
  elsif input == input.upcase
    year = rand(21) + 1930
    puts 'NO, NOT SINCE ' +year.to_s + '!'
  else
    puts 'HUH?  SPEAK UP, SONNY!'
  end  	
 end