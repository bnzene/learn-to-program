puts 'Hello dear! Gosh, you haven\'t been to see your poor old grandma in a long time. What did you want to say?'
input = gets.chomp

while input > ''
  if input == input.upcase
    if input == 'BYE'
      puts 'I\'M SORRY DEAR, WHAT WAS THAT?'
      input = gets.chomp
      if input == 'BYE'
        puts 'I\'M SORRY DEAR, MY HEARING\'S NOT WHAT IT USED TO BE. WHAT WAS IT YOU WANTED TO SAY TO YOUR DEAR, FRAIL OLD GRANDMA'
        input = gets.chomp
        if input == 'BYE'
          puts 'Goodbye then dear! Call again! This vodka won\'t drink itself you know.'
          exit
        end
      end
    else
      puts 'NO, NOT SINCE ' + (rand(50)+1920).to_s + '!'
      input = gets.chomp
    end
  end
  if input != input.upcase
  puts 'HUH? SPEAK UP, SONNY JIM!'
  input = gets.chomp
  end
end
