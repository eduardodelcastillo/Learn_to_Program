#8.3 ArraySort
#20131104

input_array = []
puts 'Please type as many words you want. Please press enter after each word.'
while true
  input = gets.chomp
  if input == ''	
  	break
  else 
    input_array.push(input)
  end
end
puts 'These are the words you\'ve entered in alphabetical order: '
puts input_array.sort