alpha = Array.new + [12345]
beta = String.new + 'hello'
karma = Time.new
puts "alpha = #{alpha}"
puts "beat = #{beta}"
puts "karma = #{karma}"

time = Time.new
time2 = time + 1.5
puts time
puts time2
puts Time.local(1918, 11, 11, 11, 00, 00)
puts 'My age at graduation:'
puts (Time.local(2016, 12, 14, 10, 30, 00) - Time.local(1991, 12, 30, 11, 15, 00))/((60*60*24) * (365 + 7/24))
puts 'When I\'ll turn one billion seconds old:'
puts Time.local(1991, 12, 30, 11, 15, 00) + 1000000000
puts 'How old I\'ll be in years:'
puts 1000000000.0/(60**2*24*365)
