class Artist
  attr_accessor :name

  @@all=[]

  def self.all
    @@all
  end

  #@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  #def name
    #self.name
    #@name
  #end

  def songs
    @songs
  end

  def save
    #@@all<<self
    self.class.all << self
  end

  def add_song(song)
    @songs << song
    #song.artist = self
  end

  def self.find_by_name(name)
    self.all.detect {|music| music.name==name}
  end

  def self.create_by_name(name)
    new_artist=self.new(name)
    new_artist.save
    new_artist
  end

  def self.find_or_create_by_name(name)
    #TERNARY SYNTAX
    (self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name))

    #Code below works but it's probaby better to
    #use class methods: find_by_name and create_by_name
    #if self.all.detect {|music| music.name==name}
    ##if @@all.detect {|music| music.name==name}
      #self.name
    #else
      #new_artist=self.new(name)
      ##new_artist=Artist.new
      ##new_artist.name=name
      #new_artist.save
      #new_artist
    #end

  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
