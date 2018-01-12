def english_number number
if number < 0 
return 'Please enter a number that isn\'t negative'
end
if number == 0
return 'zero'
end


num_string = '' 

ones_place = [ 'one', 'two', 'three',
'four', 'five', 'six',
'seven', 'eight', 'nine']

tens_place = [ 'ten', 'twenty', 'thirty',
'forty', 'fifty', 'sixty',
'seventy', 'eighty', 'ninty']

teenagers = [ 'eleven', 'twelve', 'thirteen',
'fourteen', 'fifteen', 'sixteen',
'seventeen', 'eighteen', 'nineteen']


left = number

# trillions
write = left/1000000000000
left = left - write*1000000000000

if write > 0
trillions = english_number write
num_string = num_string + trillions + ' trillion'

if left > 0
num_string = num_string + ' '
end
end

# billions
write = left/1000000000
left = left - write*1000000000

if write > 0
billions = english_number write
num_string = num_string + billions + ' billion'

if left > 0
num_string = num_string + ' '
end
end

# millions
write = left/1000000
left = left - write*1000000

if write > 0
millions = english_number write
num_string = num_string + millions + ' million'

if left > 0
num_string = num_string + ' '
end
end

# thousands
write = left/1000
left = left - write*1000

if write > 0
thousands = english_number write
num_string = num_string + thousands + ' thousand'

if left > 0
num_string = num_string + ' '
end
end

write = left/100 # how many hundreds left
left = left - write*100 # subtract off those hundreds

if write > 0
# recursion
hundreds = english_number write
num_string = num_string + hundreds + ' hundred'

if left > 0
# adds a space
num_string = num_string + ' '
end
end

write = left/10 # how many tens left
left = left - write*10 # subtract off those tens

if write > 0
if ((write == 1) and (left > 0))
# exception for teenagers
num_string = num_string + teenagers[left-1]
left = 0
else
num_string = num_string + tens_place[write-1]
end

if left > 0
# add a space
num_string = num_string + '-'
end
end

write = left 
left = 0 

if write > 0
num_string = num_string + ones_place[write-1]
end


num_string
end

puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 37)
puts english_number( 99)
puts english_number(101)
puts english_number(234)
puts english_number(3737)
puts english_number(999999)
puts english_number(100)
puts english_number(1000)
puts english_number(10000)
puts english_number(1000000)
puts english_number(10000000)
puts english_number(1000000000)
puts english_number(10000000000)
puts english_number(1000000000000)