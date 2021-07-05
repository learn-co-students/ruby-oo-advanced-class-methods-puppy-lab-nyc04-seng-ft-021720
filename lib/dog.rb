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
        puts @@all.map{|instance| instance.name}
    end

    def save
        @@all << self
    end
end