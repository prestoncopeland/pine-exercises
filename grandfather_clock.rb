# Preston Copeland
# July 6, 2013
# Tealeaf course 1
# Pine's 'How to Program'

# Grandfather clock. Write a method that takes a block and calls it once
# for each hour that has passed today. That way, if I were to pass in the
# block:
#         do
#            puts 'DONG!'
# end
# it would chime (sort of) like a grandfather clock. Test your method out
# with a few different blocks.
# Hint: You can use Time.new.hour to get the current hour. However, this
# returns a number between 0 and 23, so you will have to alter those numbers
# in order to get ordinary clock-face numbers (1 to 12).

def grandfather_clock &block

  times_to_call = ( ((Time.new.hour)%12 == 0)? 12 : Time.new.hour%12 )
  times_to_call.times do
    block.call
  end

end