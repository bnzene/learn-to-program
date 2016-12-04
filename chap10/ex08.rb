Dir.chdir '/Users/ElEleanorKB/Desktop/LTPcopy'
pic_names = Dir['/Users/ElEleanorKB/Desktop/LTPcopycopy']

puts "Renaming files. What would you like to call this batch?"
batch_name = gets.chomp
puts

print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  def safety_dance question
      puts "Name #{question} already exists. Would you like to input a new, non-duplicate name (N) or skip this file (S)?"
      input = gets.chomp.upcase
      if input == 'N'
        puts "What would you like to call this file?"
        new_name = gets.chomp
      elsif input == 'S'
        exit
      else
        puts "Please type N or S to select option (N) to rename, or (S) to skip:"
        safety_dance question
      end
    end

  File.exist? new_name
    safety_dance new_name
    
  File.rename name, new_name
  pic_number = pic_number + 1
end

puts
puts 'Done, asshole! I hate you! :D'
