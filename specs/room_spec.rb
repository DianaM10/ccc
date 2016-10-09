require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require_relative '../room'
require_relative '../song'
require_relative '../guest'

class TestRoom < Minitest::Test

def setup
  @guest1 = Guest.new("Matt Murdoch")
  @guest2 = Guest.new("Jessica Jones")
  @guest3 = Guest.new("Luke Cage")
  @guest4 = Guest.new("Foggy Nelson")
  

  @guests = [@guest1, @guest2, @guest3, @guest4]

  @song1 = Song.new("Bangles", "Eternal Flame")
  @song2 = Song.new("Bob Marley", "Redemption Song")
  @song3 = Song.new("Blur", "Song 2")
  @song4 = Song.new("Toots and the Maytals", "Monkey Man")
 
  @songs = [@song1, @song2, @song3, @song4]

  @room = Room.new("Party Room")


end


def test_check_in_one_guest
 @room.check_in_one_guest(@guest1)
 assert_equal("Matt Murdoch", @room.guests[0].name)
end

def test_add_a_song
  @room.add_a_song(@song4)
  assert_equal("Toots and the Maytals", @room.songs[0].artist)
  assert_equal("Monkey Man", @room.songs[0].title)
end

def test_songs_are_added_to_room
  @room.add_songs_to_room(@songs)
  assert_equal(["Bangles","Eternal Flame","Bob Marley", "Redemption Song", "Blur", "Song 2","Toots and the Maytals", "Monkey Man"], @room.songs)
end

def test_check_in_guests
  @room.check_in_more_than_one_guest(@guests)
  assert_equal(["Matt Murdoch", "Jessica Jones", "Luke Cage", "Foggy Nelson"], @room.guests)
end


end
