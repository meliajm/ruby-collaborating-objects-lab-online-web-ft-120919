require 'pry'
class Artist 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def add_song(song)
    song.artist = self
  end 
  
  def songs 
    Song.all.select { |s| s.artist == self}
  end
  
  def self.create(name)
    
    artist = self.new(name)
    artist.save
    artist
  end
  
  def self.create_by_name(artist_name)
    
    artist = self.create
    artist.name = artist_name
    artist
    
  end

  def self.find_by_name(artist_name)
    self.all.detect{|a| a.name == artist_name}
    
  end

  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name(artist_name)
    
  end
  
 
  
  def print_songs
    
  end
  
end