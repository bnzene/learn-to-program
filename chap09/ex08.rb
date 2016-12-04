def dictionary_sort arr
  return arr if arr.length <= 1
    y = arr.pop
    lower = arr.select{|x| x.casecmp(y) != 1 }
    higher = arr.select{|x| x.casecmp(y) == 1 }
    dictionary_sort(lower) + [y] + dictionary_sort(higher)
end

array = []

puts 'gimme some words'
input = gets.chomp
array.push(input)

while input != ''
  input = gets.chomp
  array.push(input)
end

puts dictionary_sort(array)
