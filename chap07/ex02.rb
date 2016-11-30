languages = ['English', 'Norwegian', 'Ruby']
languages.each do |lang| # creates variable 'lang' to point to objects in the array; sends block to 'each' method and does it to .each item pointed to by |lang|, i.e. each item in the array
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?' # .each is a method called an iterator - always followed by a block, code bookended with 'do ... end'; while and if don't have these
end # block of code specified by 'do' and 'end' - here, sending this block to method 'each', hence doing it to each object in the array
puts 'And let\'s hear it for Java!'
puts '<crickets chirp in the distance>'
