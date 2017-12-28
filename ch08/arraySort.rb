responses = []
response= gets.chomp

while response != ''
	responses.push response
	response = gets.chomp 
end

puts responses.sort
