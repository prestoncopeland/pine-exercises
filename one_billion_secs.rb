# Preston Copeland
# July 4, 2013
# Tealeaf course 1

# Chris Pine's 'How to Program,' ch. 12. One billion seconds.
# One billion seconds! Find out the exact second you were born (if you can).
# Figure out when you will turn (or perhaps when you did turn) one billion seconds old.
# Then go mark your calendar.

my_birthday = Time.local(1986, 7, 25, 13, 46)
one_bil_secs = my_birthday + 1_000_000_000
puts "I'll be one billion seconds old on this date: #{one_bil_secs}."
