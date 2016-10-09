class Room

  attr_reader(:name, :songs, :guests)

  def initialize(name)
    @name = name
    @songs = []
    @guests = []
    
  end

  def check_in_one_guest(a_guest)
     @guests << a_guest
   end

   def add_a_song(a_song)
    @songs << a_song
  end

  # def add_songs_to_room(all_songs)
  #     @songs << all_songs
  #     @songs.flatten! 
  #     return @songs.map! { |item| item.artist && item.title }
  #   end

    
      
  def check_in_more_than_one_guest(all_guests)
    @guests << all_guests
    @guests.flatten!
    return @guests.map! { |guest| guest.name}
  end

end
