# Preston Copeland
# July 6, 2013
# Tealeaf course 1
# Pine's 'How to Program,' ch. 11

=begin

Build your own playlist. For this to work, you need to have some music ripped
to your computer in some format. We’ve ripped a 100 or so CDs, and we
 keep them in directories something like music/genre/artist_and_cd_name/
 track_number.ogg. (I’m partial to the .ogg format, though this would work
 just as well with .mp3s or whatever you use.)
Building a playlist is easy. It’s just a regular text file (no YAML
required, even). Each line is a filename, like this:
    music/world/Stereolab--Margarine_Eclipse/track05.ogg
    What makes it a playlist? Well, you have to give the file the .m3u
    extension, like playlist.m3u or something. And that’s all a playlist
    is: a text file with an .m3u extension.
So, have your program search for various music files and build you a
playlist. Use your shuffle method on page 75 to mix up your playlist.
Then check it out in your favorite music player (Winamp, MPlayer, and so on)!

=end

require 'yaml'
# First we define these fancy methods...
def yaml_save object, filename
File.open filename, 'w' do |f| f.write(object.to_yaml)
end end

def yaml_load filename
yaml_string = File.read filename
        YAML::load yaml_string
end

      def shuffle array
    shuffled = Array.new(array.length)
    originalSize = array.length
    while(!array.empty?)
      entry = array.pop
      newPosition = rand(originalSize)
      while(shuffled[newPosition] !=nil)
        newPosition = rand(originalSize)
      end
      shuffled[newPosition] = entry
    end
    shuffled
  end

def build_playlist

  puts "What would you like the playlist title to be?"
  playlist_title = gets.chomp
  playlist_title = playlist_title + ".txt"

  Dir.chdir '~/Users/prestoncopeland'

  possible_songs = Dir['**/*.{M3U,m3u}']

  possible_songs = shuffle possible_songs
  new_playlist = []

  50.times do

    new_playlist << possible_songs.pop

  end

  yaml_save(new_playlist, playlist_title)

end