#!/usr/bin/env ruby

class Song
  def initialization(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def to_s
    "Song: #@name--#@artist (#@duration)"
  end
end

class KaraokeSong < Song
  def initialization(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
end

if __FILE__ == $0
  #song = Song.new("Bicyclops", "Fleck", 260)
  #puts song.to_s
  song = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
  puts song.to_s
end
