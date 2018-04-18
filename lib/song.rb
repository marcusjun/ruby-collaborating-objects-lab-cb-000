class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  #the artist_name= method is described in the
  #lab's instructions but not in song_spec.rb
  #It might exist to do some of the work in
  #self.new_by_filename but I couldn't get it to work
  #So this method basically is never called or used
  def artist_name=(artist_name)
    @artist=Artist.find_or_create_by_name(artist_name)

    ####################################
    #Code that didn't work
    #Artist.add_song(song)

    #if (self.artist.nil?)
      #self.artist = Artist.new(name)
    #else
      #self.artist.name = name
    #end
  end

  def self.new_by_filename(filename)
    #if filename is one string
    split_file=filename.split(" - ")
    split_artist_name=split_file[0]
    split_song_name=split_file[1]
    #split_genre_name=split_file[2]

    new_song=Song.new(split_song_name)
    new_song.artist=Artist.find_or_create_by_name(split_artist_name)#.new(split_artist_name)
    new_song.artist.add_song(split_song_name)
    new_song

    ##########################################
    #Code that didn't work

    ##@name=split_song_name
    #new_song=Song.new(split_song_name)
    ##new_song.artist.name=split_artist_name
    ##new_song.name=split_song_name

    #new_artist=Artist.new(split_artist_name)#.save
    ##new_artist.name=split_artist_name
    ##new_artist=Artist.find_or_create_by_name(split_artist_name)


    ##new_song.artist.name=split_artist_name

    #new_artist.add_song(new_song)
    #new_artist.save

    #end

    #binding.pry

    #new_song
    #new_song.artist=Artist.new(split_artist_name)#.save

    #Artist.find_or_create_by_name(split_artist_name)

    #new_song.name=split_song_name
    #new_song.artist.name=split_artist_name
    #new_song.artist.save
    #new_song.artist=split_artist_name

    #new_song


    #song = self.new#(filename.split(" - ")[1])
    #song.artist.name= filename.split(" - ")[0]
    #song.name = filename.split(" - ")[1]

    #if filename is an array
    #filename.each do |file|
      #song = self.new
      #song.artist.name= file.split(" - ")[0]
      #song.name = file.split(" - ")[1]
    #end
   #song
 end

end
