class Artist

  @@all = []

  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def name=(name)
    @name = name
  end

  def add_song(song)
    songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(title)
     find_by_name(title) ? find_by_name(title) : Artist.new(title)
  end

  def self.find_by_name(art_name)
    @@all.detect { |artist| artist.name == art_name }
  end

  def print_songs
    songs.each { |song| puts song.name }
  end

  def self.all
    @@all
  end

end
