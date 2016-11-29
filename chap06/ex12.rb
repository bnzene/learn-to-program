# Leap years
# request a start and a finish year, assign to variables n1 and n2
# use 'while' loop and < operator to check if n1 is a leap year and puts to console if correct
# then increment n1 by 1 from start year value to finish year value
# as leap years are divisible by 4 but not 100, unless also 400
# so use if/else statement with modulus (n%n == 0) to check
# numbers divisible by 100 for divisibility by 400
# and the rest for divisibility by 4
# added .to_i as necessary to avoid implicit conversion of fixnum into string errors

puts 'Gimme a start year:' # get start year
n1 = gets.chomp
puts 'And a finish year:' # get finish year
n2 = gets.chomp

while n1.to_i < (n2.to_i + 1)
  if n1 % 100 == 0
    if n1 % 400 == 0
      puts "#{n1}"
    end
  else
    if n1 % 4 == 0
      puts "#{n1}"
    end
  end
  n1 = n1.to_i + 1
end
