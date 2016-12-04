require 'yaml' # load YAML
test_array = ['Give Quiche A Chance',
              'Mutants Out!',
              'Chameleonic Life-Forms, No Thanks']

test_string = test_array.to_yaml # creates YAML description of test_array

filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |f|
  f.write test_string # writes yaml test string to file
end

read_string = File.read filename # creates variable read_string which equals the file, which contains the yaml test string
read_array = YAML::load read_string # loads YAML to read YAML test string

puts(read_string == test_string) # compares YAML version of test array to the results of reading the file
puts(read_array == test_array) # compares results of reading the YAML to the original array
