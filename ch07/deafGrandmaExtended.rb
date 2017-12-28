puts "Hi Sonny, it's your grandma, how are you?"

response = gets.chomp
bye=0

while true
	if response != response.upcase
		puts 'Huh!? SPEAK UP, SONNY!'
	end

	if (response == response.upcase && response != 'BYE')
		puts 'NO! NOT SINCE ' + (1930+rand(21)).to_s + '!'
	end

	if response == 'BYE'
		bye= (bye+1)
		if bye== 3
			puts 'GOOD BYE, SONNY!'
			break
		end
	end	
 response = gets.chomp
end
