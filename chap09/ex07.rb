# Shuffle!
# what IS a perfect shuffle? Is it randomly moving around items in an array?
# since each number seed for a random sequence gives the same result each time, could use
# a random way of selecting the seed - say, use the length of the first string in the array
# as the seed number. Create an array of those numbers equal in length to array of words.
# Then assign each number in that sequence to each item in the array, then sort
# it by those numbers.

def shuffle input
  num_array = Array.new(words_array.length) {srand(array(1).length)} # create new array, same length as
  # input array, of random numbers seeded by length of first string in words_array

  hash = Hash[num_array.zip(words_array.map {|x| x.split /, /})]

  hash.sort_by { |num, word| num }

  output_array = hash.keys
end

puts 'gimme some words!\''
input = gets.chomp
words_array = []
while input != ''
  words_array.push input.split(' ')
  input = gets.chomp
end

puts words_array.shuffle
