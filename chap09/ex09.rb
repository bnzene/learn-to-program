def english_number number

  if number < 0
    return 'Please enter a number zero or greater.'
  end

  if number > 100
    return 'Please enter a number betwen 0 and 100.'
  end

  num_string = ''
  left = number
  write = left/100
  left = left - write * 100

  if write > 0
    return 'one hundred'
  end

  write = left/10
  left = left - write* 10
  if write > 0
    if write == 1
      if left == 0
        num_string = num_string + 'ten'
      elsif left == 1
        num_string = num_string + 'eleven'
      elsif left == 2
        num_string = num_string + 'twelve'
      elsif left == 3
        num_string = num_string + 'thirteen'
      elsif left == 4
        num_string = num_string + 'fourteen'
      elsif left == 5
        num_string = num_string + 'fifteen'
      elsif left == 6
        num_string = num_string + 'sixteen'
      elsif left == 7
        num_string = num_string + 'seventeen'
      elsif left == 8
        num_string = num_string + 'eighteen'
      elsif left == 9
        num_string = num_string + 'nineteen'
      end

      left = 0
    elsif write == 2
      num_string = num_string + 'twenty'
    elsif write == 2
      num_string = num_string + 'thirty'
    elsif write == 2
      num_string = num_string + 'forty'
    elsif write == 2
      num_string = num_string + 'fifty'
    elsif write == 2
      num_string = num_string + 'sixty'
    elsif write == 2
      num_string = num_string + 'seventy'
    elsif write == 2
      num_string = num_string + 'eighty'
    elsif write == 2
      num_string = num_string + 'ninety'
    end
    if left > 0
      num_string = num_string + '-'
    end
  end
  write = left
  left = 0
  if write > 0
    if write == 1
      num_string = num_string + 'one'
    if write == 2
      num_string = num_string + 'two'
    if write == 3
      num_string = num_string + 'three'
    if write == 4
      num_string = num_string + 'four'
    if write == 5
      num_string = num_string + 'five'
    if write == 6
      num_string = num_string + 'six'
    if write == 7
      num_string = num_string + 'seven'
    if write == 8
      num_string = num_string + 'eight'
    if write == 9
      num_string = num_string + 'nine'
    end
  end
  if num_string == ''
    return 'zero'
  end
  num_string
end
puts english_number(7)
