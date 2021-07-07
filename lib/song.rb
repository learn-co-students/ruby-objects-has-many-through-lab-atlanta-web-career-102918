class Song

# #genre
#   belongs to a genre (FAILED - 6)
# #artist
#   belongs to a artist (FAILED - 7)
  attr_accessor :name, :artist, :genre
  @@all = []
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

end
