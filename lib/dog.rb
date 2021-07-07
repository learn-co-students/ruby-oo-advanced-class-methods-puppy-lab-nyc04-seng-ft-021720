class Dog
  
  attr_accessor :name
  
  @@all = []
 
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.print_all
    dog_name_array = self.all.map do |dog|
    dog.name
    end
    puts dog_name_array
  end
  
  def self.clear_all
    @@all.clear
  end
  
end