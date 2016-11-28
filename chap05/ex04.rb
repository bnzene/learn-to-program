puts 'Hi! What\'s your first name?'
firstname = gets.chomp
puts 'Cool, how about your middle name?'
midname = gets.chomp
puts 'And finally your surname?'
surname = gets.chomp
puts 'Did you know that there are ' + (firstname.length + midname.length + surname.length).to_s + ' characters in your name, ' + firstname + ' ' + midname + ' ' + surname + '?'
