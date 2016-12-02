# modern roman numerals

# Strategy: While loop, which runs as long as array contents are greater than nil. The user's input is converted to an integer and set to variable int.
# Array contains values of each numeral in ascending order. Last value in array is set to variable lastno, and use .pop to divide the number input by this value
# and return that number as variable x. Hash contains letters corresponding to each numeral (key). Use lastno to select and print the appropriate letter,
# x times. Then use -= to subtract x*lastno. End loop and repeat until it's gone through each value in the array.

def operation_DCLXVI_integer_satani
  num = gets.chomp
  int = num.to_i

  array = [1, 5, 10, 50, 100, 500, 1000]

  hash = { 1 => "I", 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}

    while array != []
      lastno = array.pop.to_i
      x = (int / lastno)
      print hash[lastno] * x # select and print the appropriate key from the hash, the number of times specified by 'multiple'
      int -= x * lastno
    end
end
puts 'Gimme a number and I\'ll give you a Roman numeral!'
operation_DCLXVI_integer_satani
puts

# Try assigning a number to a variable, and then decrementing it by 1 each iteration; do an if/else testing for n = 5 or 3 or 1 (corresponding to 500, 50 or 5 AND int/array[n-1] > 3, which
# leads to print array[n-1] * (10 - int/array[n-1]) + array[n+1]
# could try pushing output to hash, searching it for values DCCC/DCCCC, CCCC, LXXX/LXXXX, XXXX, VIII/VIIII, IIII
# and replace each with equivalent keys CCM/CM, CD, XXC/XC, XL, IIX/IX, IV
# something like: output hash.push
# if output.contain?{any value in hash x} replace {value} with {key}
# then puts result
