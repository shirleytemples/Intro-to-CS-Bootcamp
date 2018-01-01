puts 'leap years program'.center(40)
puts ''
puts 'what is the starting year:'
starting = gets.to_i
puts 'Please type an ending year:'
  while (ending = gets.to_i)<starting
    puts 'ending year should be later than starting year, please re-input:'
  end

puts 'All leap years below:'
  while starting <= ending
    if (starting%100 != 0 and starting%4 ==0) or (starting%100 == 0 and starting%400== 0)
	  puts starting
	end
	starting= starting+1
  end