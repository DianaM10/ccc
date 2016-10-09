class Room

  attr_reader(:name, :song, :guests)

  def initialize(name, songs, guests)
    @name = name
    @songs = [song]
    @guests = []
    
  end

  def check_in_one_guest(guest)
    
     @guests << guest
    
   end

#   def add_songs_to_room(song)
# # binding.pry
#     song.each do |songs|
#       @songs << songs
#     end

    
  end


  # def check_in_guests(name)
  #   @guest = @guests.each do |guest| 
  #     @guests << guest.name
  #   end
  #   return @guest
  # end

  # def check_in_guests(name)
  #   @guests.each { |guest| @guest << guest.name}
  #   end
      
  # def check_in_guests(name)
  #   @guest << name
  #   @guest.each
  # end

