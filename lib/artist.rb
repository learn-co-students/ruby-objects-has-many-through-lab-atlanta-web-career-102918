require 'pry'
class Artist
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    # binding.pry
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    array = []
    Song.all.each do |song|
      if song.artist == self
        array << song.genre
      end
    end
    array
  end
  #   has many genres, through songs (FAILED - 5)

end
