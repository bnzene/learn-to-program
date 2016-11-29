# 99 bottles of beer on the wall
# number of bottles: variable called 'bottleno', initially set at 99
# process repeats until there are no bottles left - use 'while bottleno > 0' so process stops when 1 bottle left
# print first line up to when bottle smashes, interpolating bottleno as needed
# decrement bottleno by 1 each time using -=
# print final line interpolating new bottleno
bottleno = 99

while bottleno > 0
  puts bottleno.to_s + " bottles of beer on the wall, " + bottleno.to_s + " bottles of beer;"
  bottleno -= 1
  puts "One fell down and smashed on the ground," + bottleno.to_s + " bottles of beer on the wall"
end
