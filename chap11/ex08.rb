birth_dates=[]

File.open('birthdates.txt') do |file|
  file.each_line do |line|
    if line != "\n"
      birth_dates << line.chomp.split(', ')
    end
  end
end
birth_dates.join{|x, y, z| y + ', ' + z }

hash = Hash[birth_dates.map {|x,y| [x, y]}]
puts hash.keys
puts 'Which of these names do you want to find the birthday for?'
input = gets.chomp
puts hash[input]
