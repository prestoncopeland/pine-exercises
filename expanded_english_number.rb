# Preston Copeland
# July 4/5, 2013
# Tealeaf course 1

# Expanded English Number from Chris Pine's 'How to Program,' ch. 10
# Finally got it! Yeah!!


def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end

  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = ['one',       'two',      'three',
              'four',      'five',     'six',
              'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
              'forty',     'fifty',    'sixty',
              'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen',
              'fourteen',  'fifteen',  'sixteen',
              'seventeen', 'eighteen', 'nineteen']

  power_of_ten = [1_000_000_000_000, 1_000_000_000,
                  1_000_000, 1_000, 100]
  higher_names = ['trillion', 'billion', 'million',
                  'thousand', 'hundred']

  left = number

  (0...5).each do |idx|
    write = left/power_of_ten[idx] #how many of that place left?
    left = left - write*power_of_ten[idx] #subtract them off

    if write>0
      place = english_number write
      num_string = num_string + place + ' ' + higher_names[idx]
      if left>0
        num_string = num_string + ' '
      end
    end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
        num_string = num_string + tens_place[write-1]
        #  The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end

    if left > 0
    # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
    if write > 0
      num_string = num_string + ones_place[write-1] # The "-1" is because ones_place[3] is
      # 'four', not 'three'.
    end

    #  Now we just return "num_string"...
  num_string
end


