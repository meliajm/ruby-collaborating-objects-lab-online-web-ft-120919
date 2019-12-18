require 'pry'

class MP3Importer
  
  @@paths = []
  
  def initialize(filepath)
    @filepath = filepath
  end
  
  def path
    @filepath
  end
    
  def files(file)
    @@paths << file
  end
  
  def import 
    
  end
end 
