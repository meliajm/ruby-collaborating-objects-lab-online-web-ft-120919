require 'pry'
class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end 
  
  def self.new_by_filename(filename)
    # binding.pry
    s = self.new(filename.split(' - ')[1])
    s.artist_name = filename.split(' - ')[0]
    s
  end
  
  
  def artist_name=(name)
    # binding.pry
    # if self.artist != name
    #   self.artist = Artist.new(name)
    # end
    # if (self.artist.nil?)
    #   self.artist = Artist.new(name)
    # else
    #   self.artist.name = name
    # end
    
    if self.artist.nil?
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
    
    
  end
  
  
    
    # binding.pry
    
  
end 