# table of contents exercise
title = ['Table of Contents']
chapters = ['1', '2', '3']
contents = ['Getting Started', 'Numbers', 'Letters']
pageno = ['1', '9', '13']

line_width = 75
column_width = 25

puts title[0].center(line_width)
puts
n = 0
while n < 3
  puts ('Chapter ' + chapters[n]).ljust(column_width) + contents[n].center(column_width) + ('Page ' + pageno[n]).rjust(column_width)
  n += 1
end
