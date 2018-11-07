class Genre

  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  # #name
  #   has a name
  # #songs
  #   has many songs (FAILED - 1)
  # .all
  #   knows about all genre instances
  # #artists
  #   has many artists, through songs (FAILED - 2)

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    array = []
    Song.all.each do |song|
      if song.genre == self
        array << song.artist
      end
    end
    array
  end

end
