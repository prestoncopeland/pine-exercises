# Preston Copeland
# July 6, 2013
# Tealeaf course 1
# Pine's 'How to Program,' ch. 11

=begin
Safer picture downloading. Adapt the picture-downloading/file-renaming
program to your computer by adding some safety features to make sure
you never overwrite a file. A few methods you might find useful are
File.exist? (pass it a filename, and it will return true or false) and
exit (like if return and Napoleon had a baby—it kills your program right
where it stands; this is good for spitting out an error message and then
quitting).

=end

Dir.chdir 'C:/User/prestoncopeland/pictures'
#  First we find all of the pictures to be moved.
pic_names = Dir['C:/**/*.{JPG,jpg}']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "
pic_number = 1

pic_names.each do |name|
  print '.' # This is our "progress bar".
  new_name = if File.exist?
              if(pic_number < 10)
                "#{batch_name}0#{pic_number}.jpg"
              else
                "#{batch_name}#{pic_number}.jpg"
              end
            end

  File.rename name, new_name
  #  Finally, we increment the counter.
  pic_number = pic_number + 1
end

puts "All done!"
puts





















