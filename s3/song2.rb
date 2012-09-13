#!/usr/bin/env ruby

class Song
  attr_reader :username, :email
  attr_writer :username

  def initialize(username, email)
    @username = username
    @email = email
  end

  def to_s
    puts "Username: #@username, Email: #@email"
  end
end

if __FILE__ == $0
  song = Song.new("Wyatt", "wwq0327@gmail.com")
  song.to_s
  puts song.username
  puts song.email
  song.username = 'wwq0327'
  puts song.username
end
