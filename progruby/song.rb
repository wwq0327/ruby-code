#!/usr/bin/env ruby

class Song
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
  def to_s
    "Song: #@name--#@artist (#@duration)"
  end
end

class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end

  def to_s
    super + "{#@lyrics}"
  end
end

if __FILE__ == $0
  song = Song.new("Hello", "Flick", 260)
  puts song.to_s

  oksong = KaraokeSong.new("hello", "wyatt", 320, "hahaha")
  puts oksong.to_s
end
