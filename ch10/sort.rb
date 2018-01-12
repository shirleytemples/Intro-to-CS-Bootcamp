array = ['big', 'small', 'Happy', 'little', 'slow', 'fantastic', 'Xenon', 'glorious', 'he', 'Jazz', 'zebra']
sorted_array = []

def mySort(array, sorted_array)
  if array.length <= 0
    return
  end
  x = 0
  y = 0
  while y < array.length 
    if array[x] < array[y]
      y += 1
    elsif array[x] > array[y]
      x = y
      y += 1
    else
      y += 1
    end
  end
  sorted_array.push(array[x]) 
  array.delete(array[x])
  mySort(array, sorted_array)
end
mySort(array, sorted_array)

puts sorted_array
puts
puts array
