# write program which asks user to type as many words as they like -
# one per line, until they press enter on an empty line,
# and then repeats the words back to them in alphabetical order.
# plan: puts message requesting input, create array for user input and
# use gets.chomp, in a while loop whose condition is input != '' to
# push input to the array and request more input; then call .sort method
# on array to put it in alphabetical order, then use pop to print
# last item, inside a while loop for which the condition is arrayname[0] > ''
# notes: call capitalise method on each word to ensure that they're sorted correctly
# needed to use sort! to make sure the array STAYED sorted
# then call reverse! to make sure array stays reversed, then use pop inside a loop

puts 'Hi! Enter as many words as you like, one at a time, and press \'Enter\' to submit.'
input = gets.chomp
userinput = []
while input != ''
  userinput.push input.capitalize
  puts 'Thanks! Add another word or press \'Enter\' to sort the array.'
  input = gets.chomp
end
puts 'Great! Sorting the words...'
userinput.sort!.reverse!
while userinput[0] > ''
  puts userinput.pop
end
