# Preston Copeland
# July 6, 2013
# Tealeaf course 1
# Pine's 'How to Program,' ch. 14

=begin

Better program logger. The output from that last logger was kind of
hard to read, and it would just get worse the more you used it. It would
be so much easier to read if it indented the lines in the inner blocks.
So, you’ll need to keep track of how deeply nested you are every time
the logger wants to write something. To do this, use a global variable,
which is a variable you can see from anywhere in your code. To make a
global variable, just precede your variable name with $, like so:
$global, $nesting_depth, and $big_top_pee_wee. In the end, your logger
should output code like this:

Beginning "outer block"...
  Beginning "some little block"...
    Beginning "teeny-tiny block"...
    ..."teeny-tiny block" finished, returning:
    lots of love
  ..."some little block" finished, returning:
  42
  Beginning "yet another block"...
  ..."yet another block" finished, returning:
  I love Indian food!
..."outer block" finished, returning:
true

=end
$nesting_depth = 0

def program_logger(block_description, &block)
  $nesting_depth +=1
  puts "\t"*$nesting_depth + "Started block #{block_description}."
  result = block.call
  puts "\t"*$nesting_depth + "#{block_description} finished, returning: #{result}"
  $nesting_depth -=1

end

program_logger "Square it: outer block" do |x|
  x=4
  program_logger "Double it: inner block" do |y|
    y=5
    program_logger "Say hi: innermost block" do
      "Hello"
    end
    y+y
  end
  x*x
end
































