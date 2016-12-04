# had trouble so looked through examples and rebuilt, including user input
# get input
# add to array
# pop last item from array and use as benchmark
# repeatedly pop last item, compare to benchmark. if larger push back to largerarray, if smaller set new benchmark
# until original array is empty.
def sort arr
  return arr if arr.length <= 1
  y = arr.pop
  below = arr.select{|x| x < y}
  above = arr.select{|x| x >= y}
  sort(below) + [y] + sort(above)
end

array = []

puts 'gimme some words'
input = gets.chomp
array.push(input)

while input != ''
  input = gets.chomp
  array.push(input)
end

puts sort(array)
