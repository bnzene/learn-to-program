# Shuffle - Attack of the Arrays

class Array
  def self.shuffle
    num_array = Array.new(words_array.length) {srand(array(1).length)} # create new array, same length as
    # input array, of random numbers seeded by length of first string in words_array
    hash = Hash[num_array.zip(words_array.map {|x| x.split /, /})]
    hash.sort_by { |num, word| num }
    output_array = hash.keys
  end
end
puts 'gimme some words!'
words_array = gets.chomp.split(' ' || ', ' || ',')

puts words_array.shuffle
