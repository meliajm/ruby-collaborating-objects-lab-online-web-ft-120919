require 'pry'

class MP3Importer
  
  # attr_reader :filepath
  @@paths = []
  
  def initialize(filepath)
    @filepath = filepath
  end
  
  def path
    @filepath
  end
  
  def files
    Dir.entries(@filepath).select { |f| f.end_with?(".mp3") == true }
  end
    
  # def files(file)
  #   @@paths << file
  # end
  
  def import 
    
  end
end 
