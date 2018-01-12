def sort_meth unsorted, sorted
  if unsorted.length == 0
    return sorted
  end
  new_unsorted = []
  smallest = unsorted.pop

  unsorted.each do |testword|
    if testword < smallest
      new_unsorted.push smallest
      smallest = testword
    else
      new_unsorted.push testword
    end
  end
  sorted.push smallest
  unsorted = new_unsorted

  sort_meth new_unsorted, sorted
end

puts (sort_wrap(['banana',  'zebra',  'dolphin',  'apple',  'Chris',  'faculty',
'Berkeley',  'Shirley']))
