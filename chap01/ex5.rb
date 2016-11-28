# hours in a year
puts 'Hours in a year:'
puts 24 * 365

# minutes in a decade (including three leap years)
puts 'Minutes in a decade:'
puts (60 * 24) * (365 * 7 + 366 * 3)

# my age in seconds
puts 'My age in seconds:'
puts (((24 * 365) + 6) + (28 * 2) + (30 * 3) + (31 * 6)) * (24 * 60**2)

# author's age
puts 'Author\'s age:'
puts 1160000000/(60**2 * 24 * 365)
