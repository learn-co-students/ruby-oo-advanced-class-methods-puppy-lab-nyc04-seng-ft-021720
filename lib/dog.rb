# Add your code here
class Dog
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end 

    def self.clear_all
        self.all.clear
    end 

    def self.print_all
        for name in @@all 
         puts name.name
        end 
    end 

    def save
        @@all.push(self)
    end 

end 
