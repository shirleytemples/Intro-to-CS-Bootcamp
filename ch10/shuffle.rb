some_array = ['goo', 'shoo', 'big', 'apple']


def shuffle some_array
   recurssive_shuffle some_array
end

def recurssive_shuffle some_array
   n = some_array.length
   helper_array = []
   new_array = []
   while n != 0
     r = rand(n)
     while some_array.length != (r + 1)
       helper_array.push some_array.pop
     end
     new_array.push some_array.pop
     n = (n - 1)
     helper_array.each do |item|
       some_array.push item
     end
   end
   puts new_array
end

shuffle some_array