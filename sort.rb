def sort some_array 
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array 
  response= gets.chomp

  while response != ''
	responses.push response
	response = gets.chomp 
  end

  puts responses.sort
end