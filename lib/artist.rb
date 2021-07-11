class Artist
  attr_accessor :name 

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    songs = Song.all.find_all {|s| s.artist == self}
  end

  def genres
    genres = self.songs.collect {|s| s.genre}.uniq
  end
end