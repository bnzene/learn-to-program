def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''
  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty','fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']
  zillions = [['hundred', 2],
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12],
              ['quadrillion', 15],
              ['quintillion', 18],
              ['sextillion', 21],
              ['septillion', 24],
              ['octillion', 27],
              ['nonillion', 30],
              ['decillion', 33],
              ['undecillion', 36],
              ['duodecillion', 39],
              ['tredecillion', 42],
              ['quattuordecillion', 45],
              ['quindecillion', 48],
              ['sedecillion', 51],
              ['septemdecillion', 54],
              ['octodecillion', 57],
              ['novemdecillion', 60],
              ['vigintillion', 63],
              ['googol', 100]]
  left = number

# create an array called zillions, filled with sub-arrays each containing the appropriate prefix and a number representing the number of 0s it denotes
while zillions.length > 0   # this is a recursive loop, where it yields 0 and repeats through the array zillions for powers of 10 larger than the number
                            # and then when the appropriate power is reached yields an appropriate prefix and gets rid of that base to process the remainder of the number,
                            # looping until everything down to hundreds has been dealt with and then passing the remainder on to the rest of the function
  zil_pair = zillions.pop # pop the last sub-array of name and number of 0s from the array
    zil_name = zil_pair[0] # zil_name is a variable equivalent to the first entry, i.e. name, in the sub-array array just popped
    zil_base = 10 ** zil_pair[1] # zil_base is a variable equivalent to 10 raised to the power of the number (i.e. the entry with index 1) in the array popped earlier
    write = left/zil_base # variable write is equivalent to left - the number entered - divided by the specified power of 10
    left = left - write * zil_base # write * zil_base - the number of zillions - is subtracted from left to leave the rest of the number to deal with

    if write > 0 # write is the number of zillions, skips this if the number doesn't contain any of this particular kind of zillions and moves to next entry in array
      prefix = english_number write # prefix is set equal to the value of write, i.e. the number of this kind of zillions
      num_string = num_string + prefix + ' ' + zil_name # number of zillions and name of appropriate kind of zillion are appended to the number string
      if left > 0
        num_string = num_string + ' ' # if there are no zillions, adds a space to the number string to avoid words running together and exits loop, passing num_string forward to the rest of the function
      end
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end
  write = left
  left = 0
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end
puts english_number(802590)
puts english_number(7)
puts english_number(790)
puts english_number(1000000)
puts english_number(1000101)
