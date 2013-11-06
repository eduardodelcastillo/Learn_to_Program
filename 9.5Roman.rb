#Old-school Roman numerals
#20131104

def toOldRoman number
  number = number.to_i	
  thousands = number/1000
  number = number%1000
  five_hundreds = number/500
  number = number%500
  hundreds = number/100
  number = number%100
  fifties = number/50
  number = number%50
  tens = number/10
  number = number%10
  fives = number/5
  number = number%5
   
  roman_number = roman_number.to_s 
  roman_number = 'M'*thousands + 'D'*five_hundreds + 'C'*hundreds + 'L'*fifties + 'X'*tens + 'V'*fives + 'I'*number 
  puts roman_number
end

def toModernRoman number
  number = number.to_i	
  roman_number = ''
  thousands = number/1000
  roman_number = 'M'*thousands
  number = number%1000
  hundreds = number/100
  if hundreds == 9
  	roman_number << 'CM'
  elsif hundreds == 4
  	roman_number << 'CD'
  else
    five_hundreds = number/500
    if five_hundreds == 1
      hundreds = hundreds - 5
    end
  	roman_number << 'D'*five_hundreds +'C'*hundreds
  end
  number = number%100
  tens = number/10
  if tens == 9
  	roman_number << 'XC'
  elsif tens == 4
  	roman_number << 'XL'
  else
    fifties = number/50
    if fifties == 1
      tens = tens - 5
    end
  	roman_number << 'L'*fifties+'X'*tens
  end
  number = number%10
  if number == 9
  	roman_number << 'IX'
  elsif number == 4
  	roman_number << 'IV'
  else
    fives = number/5
    if fives == 1
      number = number - 5
    end
  	roman_number << 'V'*fives+'I'*number
  end
   
  puts roman_number
end

puts 'Please input a number to be converted to its Roman numeral equivalent form.'
input = gets.chomp.to_i
puts 'Old Roman is: ' 
toOldRoman(input)
puts 'Modern Roman is: ' 
toModernRoman(input)