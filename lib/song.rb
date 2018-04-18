require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  #def name=(name)
    #@name=name
  #end

  #def name
    #self.name
    #self.artist.name
    #@name
  #end

  #def artist=(artist)
    #@artist=artist
  #end

  def artist_name=(name)
    @artist=Artist.find_or_create_by_name(name)
    #Artist.add_song(song)

    #if (self.artist.nil?)
      #self.artist = Artist.new(name)
    #else
      #self.artist.name = name
    #end
  end

  def self.new_by_filename(filename)
    #if filename=="Michael Jackson - Black or White - pop.mp3"
      #split_file=filename.split(" - ")
      #split_artist_name="Michael Jackson"
      #split_song_name="Black or White"

      #new_instance=Song.new("Black or White")
      #new_song.name

      #new_instance.artist=Artist.new("Michael Jackson")

      #new_instance

      #new_instance.name="Black or White"

      #new_song.name="Black or White"
      #new_song
      #new_artist.print_songs
      #new_artist.add_song(new_song)
      #new_artist.save

      #new_song.class.name
      #self.class.name

      #"Black or White"
      #self.name
      #self.name="Black or White"
      #@name


      #new_song.name=split_song_name
      #@name=split_song_name
      #new_artist=Artist.new(split_song_name)
      #new_song.artist=Artist.new(split_song_name)
      #@artist=Artist.new(split_song_name)

    #else

      #if filename is one string
      split_file=filename.split(" - ")
      split_artist_name=split_file[0]
      split_song_name=split_file[1]

      new_instance=Song.new(split_song_name)
      new_instance.artist=Artist.find_or_create_by_name(split_artist_name)#.new(split_artist_name)
      new_instance.artist.add_song(split_song_name)
      #new_instance.add_song(new_instance)
      new_instance#.save

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
