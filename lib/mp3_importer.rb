class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path=path
    #Call files method within initialize method?
  end

  #def self.files
  def files
    #loads all the mp3 files in the path directory
    #normalizes the filename to just the mp3 filename with no path

    #basedir=@path
    #Dir.chdir(@path)

    @files=Dir.entries(@path)

    #HORRIBLE WORKAROUND! but works
    @files.delete_if {|entry| entry=="." || entry==".."}

    #@files= [".", "Action Bronson - Larry Csonka - indie.mp3", "Real Estate - Green Aisles - country.mp3",
    #"Thundercat - For Love I Come - dance.mp3", "Real Estate - It's Real - hip-hop.mp3", ".."]

    #@files.shift
    #@files.pop

    #Dir.chdir("./spec/fixtures/mp3s/")

    #@files = Dir.glob("*.mp3")

    #@files = Dir.glob(@path + "*.mp3")
    #@files = Dir[path + "*.mp3"]
    #@files = Dir.entries(@path)

    #["Real Estate - Green Aisles - country.mp3", "Real Estate - It's Real - hip-hop.mp3",
    #"Action Bronson - Larry Csonka - indie.mp3", "Thundercat - For Love I Come - dance.mp3"]


    #########################################
    #Tried to strip .mp3 from end of strings
    #but don't need to per test specs
    #@files=@files.collect do |file_name|
    #@files.each do |file_name|
    #@files.collect do |file_name|
      #file_name=file_name.split(".mp3")
      #file_name.split(".mp3")
      #file_name=file_name.split(".mp3")
    #end

    #[["Real Estate - Green Aisles - country"], ["Real Estate - It's Real - hip-hop"], ["Action Bronson - Larry Csonka - indie"], ["Thundercat - For Love I Come - dance"]]

    #Dir["/path/to/search/**/*.rb"]

  end

  #def self.import
  def import
    #imports the files into the library by creating songs from a filename

    #Call files method first? or self.files ?
    files

    #Because @files is an array
    i=0
    while (i<3)
      Song.new_by_filename(@files[i])
      i+=1
    end
    #@files.each do |file|
      #Song.new_by_filename(file)
    #end

    #Song.new_by_filename(@files)

    #if @files were only a single string
    #Song.new_by_filename(@files)

  end

end
