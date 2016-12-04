puts Dir['**/*.{JPG,jpg}']

puts Dir.chdir("../../../Pictures")['*.jpg']
