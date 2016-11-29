# Deaf grandma extended
# plan: grandma welcomes user and prompts input
# use gets.chomp to assign input to variable 'input'
# if input = 'BYE' then end - use while loop to repeat as long as input != 'BYE'
# inside while loop use if/else to select input in all caps, compare input to input.upcase
# using 'if input == input.upcase' and puts the response;
# use (rand(50)+1920).to_s + "string" to yield a different year between 1920 and 1969 in each response
# repeat input = gets.chomp to go back to the beginning of the while loop
# use else to puts second response ('SPEAK UP!') to all input not in all caps
# repeat input = gets.chomp to go back to the beginning of the while loop
# end if/else loop and while loop
# as using 'BYE' ends while loop, to make it necessary to say BYE 3x in a row, created
# new while loop for if input == 'BYE', prompts input again and if input again == 'BYE' breaks the loop and ends program
# else the contents of earlier loop are repeated - copied and pasted for want of better method, as this part
# is outside of the 'input != 'BYE'' loop so doesn't automatically go through those steps

puts 'Hello dear! Gosh, you haven\'t been to see your poor old grandma in a long time. What did you want to say?'
input = gets.chomp

while input != 'BYE'
  if input == input.upcase
    puts 'NO, NOT SINCE ' + (rand(50)+1920).to_s + '!'
    input = gets.chomp
  else
    puts 'HUH? SPEAK UP, SONNY JIM!'
    input = gets.chomp
  end
end
while input == 'BYE' # start new loop which prompts input, if it's 'BYE' prompts again, if it's 'BYE' again breaks;
  puts 'I\'M SORRY DEAR, WHAT WAS THAT?'
  input = gets.chomp
  if input == 'BYE'
    puts 'I\'M SORRY DEAR, MY HEARING\'S NOT WHAT IT USED TO BE. WHAT WAS IT YOU WANTED TO SAY TO YOUR DEAR, FRAIL OLD GRANDMA?'
    input = gets.chomp
    if input == 'BYE'
      break
    else # want to return to earlier 'while' loop, copied and pasted inside this if/else for want of better method
      while input != 'BYE'
        if input == input.upcase
          puts 'NO, NOT SINCE ' + (rand(50)+1920).to_s + '!'
          input = gets.chomp
        else
          puts 'HUH? SPEAK UP, SONNY JIM!'
          input = gets.chomp
        end
      end
    end
  else # want to return to earlier 'while' loop, copied and pasted inside this if/else for want of better method
    while input != 'BYE'
      if input == input.upcase
        puts 'NO, NOT SINCE ' + (rand(50)+1920).to_s + '!'
        input = gets.chomp
      else
        puts 'HUH? SPEAK UP, SONNY JIM!'
        input = gets.chomp
      end
    end
  end
end
