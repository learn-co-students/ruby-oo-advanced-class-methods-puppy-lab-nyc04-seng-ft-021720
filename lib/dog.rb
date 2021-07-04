require 'pry'

class Dog

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    self.save
  end

  def get_name
    @name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear_all
    @@all = []
  end
  
  def self.print_all
    @@all.each{ |item|
      puts item.get_name
    }
  end
end