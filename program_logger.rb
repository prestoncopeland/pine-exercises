# Preston Copeland
# July 6, 2013
# Tealeaf course 1
# Pine's 'How to Program,' ch. 14

# Program logger. Write a method called log that takes a string
# description of a block (and, of course, a block). Similar to the
# method do_self_importantly, it should puts a string telling you
# it started the block and another string at the end telling you it
# finished and also telling you what the block returned. Test your
# method by sending it a code block. Inside the block, put another
# call to log, passing a block to it. In other words, your output
# should look something like this:
# Beginning "outer block"...
# Beginning "some little block"...
# ..."some little block" finished, returning:
# 5
# Beginning "yet another block"...
# ..."yet another block" finished, returning:
# I like Thai food!
# ..."outer block" finished, returning:  false

def program_logger(block_description, &block)

  puts "Started block #{block_description}."
  result = block.call
  puts "#{block_description} finished, returning: #{result}"

end


program_logger "Square it: outer block" do |x|
  x=4
  program_logger "Double it: inner block" do |y|
    y=5
    program_logger "Say hi: innermost block" do
      puts "Hello"
    end
    y+y
  end
  x*x
end






























