def sort arr # defines method sort with one parameter
  rec_sort arr, [] # calls method rec_sort with two parameters, arr and []
end

def rec_sort unsorted, sorted # defines method rec_sort with two parameters
  if unsorted.length <= 0 # if length of array unsorted <= 0, i.e. it's been emptied, then return the array 'sorted'
    return sorted
  end

  # So if we got here, then it means we still have work to do.
  smallest = unsorted.pop # creates variable smallest and sets equal to the last element in array 'unsorted', which is then removed
  still_unsorted = [] # creates empty array

  unsorted.each do |tested_object| # for each item in array unsorted, referred to by tested_object, do process below
    if tested_object < smallest # compare first item in array unsorted with the last, smallest, and if smaller do this:
      still_unsorted.push smallest # push bigger item, smallest, to array still_unsorted
      smallest = tested_object # set tested_object to be the new value of smallest, i.e. successively select smaller item till you find the smallest
    else
      still_unsorted.push tested_object # if tested_object is greater than or equal to smallest, push it to array still_unsorted, and repeat method
    end
  end # repeat until gone through every item in unsorted
# So, what this method does is: take the last item entered as the item compared to
# checks each item in the array and puts all smaller items to a new array, all bigger ones to a different array, and sets

  sorted.push smallest # then, push item smallest to array unsorted
  rec_sort still_unsorted, sorted # call method rec_sort on arrys still_unsorted and sorted, so only when unsorted is empty, puts array sorted
end

puts(sort(['f','eh','art','ryjm','yd','hg','nf','di8']))
