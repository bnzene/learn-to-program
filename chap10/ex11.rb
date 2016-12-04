Dir.chdir("../../../Music/iTunes/iTunes Media")
musicfiles = Dir.glob("**/*.{mp3,mp4,WAV,AIFF}")

def shuffle
  num_array = Array.new(musicfiles.length) {srand(musicfiles.length)}
  hash = Hash[num_array.zip(musicfiles.map {|x| x.split /, /})]
  hash.sort_by { |num, word| num }
  output_array = hash.keys

end

puts 'How many songs do you want in your playlist?'
n = gets.chomp.to_i
puts 'Generating random playlist...'
puts 'Voila!'
puts musicfiles.shuffle[0..n-1]
