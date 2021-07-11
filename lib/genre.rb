class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end

  def self.all
    @@all 
  end

  def songs
    songs = Song.all.find_all {|s| s.genre == self}
  end

  def artists
    artists = self.songs.collect {|s| s.artist}.uniq
  end
end