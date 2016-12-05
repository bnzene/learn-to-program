# oldschool roman numerals

# Strategy: While loop, which runs as long as array contents are greater than nil. The user's input is converted to an integer and set to variable int.
# Array contains values of each numeral in ascending order. Last value in array is set to variable lastno, and use .pop to divide the number input by this value
# and return that number as variable x. Hash contains letters corresponding to each numeral (key). Use lastno to select and print the appropriate letter,
# x times. Then use -= to subtract x*lastno. End loop and repeat until it's gone through each value in the array.

class Integer
  def operation_DCLXVI
    num = self
    array = [1, 5, 10, 50, 100, 500, 1000]
    hash = { 1 => "I", 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}
    while array != []
      lastno = array.pop.to_i
      x = (num / lastno)
      print hash[lastno] * x # select and print the appropriate key from the hash, the number of times specified by 'multiple'
      num -= x * lastno
    end
  end
end
puts 'Gimme a number and I\'ll give you a Roman numeral!'
x = gets.chomp.to_i
x.operation_DCLXVI
puts
