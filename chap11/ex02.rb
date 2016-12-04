def spank
  puts 'What year were you born in?'
  year = gets.chomp.to_i
  puts 'What month?'
  month = gets.chomp.to_i
  puts 'What day?'
  day = gets.chomp.to_i
  seconds = Time.new - Time.local(year, month, day)
  years = seconds/(60*60*24*365)
  puts 'SPANK!' * age
end

puts spank
