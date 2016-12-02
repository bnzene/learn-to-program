# modern roman numerals
# almost working except for numbers ending in 9, when it goes bonkers
# admittedly this is using gsub and Regexp based on googling a stackoverflow answer and I have no idea what I'm doing
def operation_confiscatio_secundo
  num = gets.chomp
  int = num.to_i

  array = [1, 5, 10, 50, 100, 500, 1000]
  output = Array.new
  hash = { 1 => "I", 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}

  result = { 'DCCC' => 'CCM', 'DCCCC' => 'CM', 'CCCC' => 'CD', 'LXXX' => 'XXC', 'LXXXX' => 'XC', 'XXXX' => 'XD', 'VIII' => 'IIX', 'VIIII' => 'IX', 'IIII' => 'IV' }

  while array != []
    lastno = array.pop.to_i
    x = (int / lastno)
    output.push(hash[lastno] * x) # select and print the appropriate key from the hash, the number of times specified by 'multiple', and push to end of array
    int -= x * lastno
  end
    merp = output.join('') # join elements of array into a string
    puts 'Old-style Roman numerals: ' + merp
    puts merp.gsub(Regexp.union(result.keys), result)
end
puts 'Gimme a number and I\'ll give you a Roman numeral!'
operation_confiscatio_secundo
puts

# Try assigning a number to a variable, and then decrementing it by 1 each iteration; do an if/else testing for n = 5 or 3 or 1 (corresponding to 500, 50 or 5 AND int/array[n-1] > 3, which
# leads to print array[n-1] * (10 - int/array[n-1]) + array[n+1]
# could try pushing output to hash, searching it for values DCCC/DCCCC, CCCC, LXXX/LXXXX, XXXX, VIII/VIIII, IIII
# and replace each with equivalent keys CCM/CM, CD, XXC/XC, XL, IIX/IX, IV
# something like: output hash.push
# if output.contain?{any value in hash x} replace {value} with {key}
# then puts result
