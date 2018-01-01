puts 'time to sing 99 bottles'.capitalize
bottles = 99
while bottles !=0 && bottles != 1 && bottles != 2
  puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer.'
  bottles= bottles-1
  puts 'take one and pass it around, ' + bottles.to_s + ' bottles of beer on the wall.'
  puts ''
end
  if bottles == 2
    puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer.'
	bottles = bottles - 1
	puts 'Take one down and pass it around, ' + bottles.to_s + ' bottle of beer on the wall.'
	puts ''
  end
  if bottles == 1
	puts bottles.to_s + ' bottle of beer on the wall, ' + bottles.to_s + ' bottle of beer.'
	bottles = bottles-1
	puts 'Take one down and pass it around, no more bottles of beer on the wall.'
	puts ''
  end

  if bottles == 0
	puts 'No more bottles of beer on the wall, no more bottles of beer.' 
	puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
  end