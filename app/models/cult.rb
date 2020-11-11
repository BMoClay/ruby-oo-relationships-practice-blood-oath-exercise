class Cult
    attr_accessor :name, :founding_year, :location, :slogan, :minimum_age
    @@all = []

    def initialize(name, founding_year, location, slogan, minimum_age)
        @name = name
        @founding_year = founding_year
        @location = location
        @slogan = slogan
        @minimum_age = minimum_age
        @@all << self
    end

    def self.all
        @@all
    end

    def followers
        BloodOath.all.select{|follower| follower.cult == self}
    end

    def recruit_follower(follower)
        if follower.age >= self.minimum_age
       BloodOath.new(Date.today, self, follower)
        else puts "Sorry"
        end
    end

    def cult_population
        followers.count{|followers| followers.cult == self}
    end
    
    def self.find_by_name(cultname)
        Cult.all.select{|cult| cult.name == cultname}
    end

    def self.find_by_location(locationarg)
        Cult.all.select{|cult| cult.location == locationarg}
    end

    def self.find_by_founding_year(founding_yeararg)
        Cult.all.select{|cult| cult.founding_year == founding_yeararg}
    end

    def average_age
       ages = followers.map{|cult| cult.follower.age}.sum
       ages / self.cult_population.to_f
    end

    def my_followers_mottos
        followers.map{|cult| cult.follower.life_motto}
    end

    def self.least_popular
        Cult.all.min(1){|cult| cult.followers.count}
    end

    def self.most_common_location
        locations = Cult.all.map{|cult| cult.location}
        locations.max_by {|i| locations.count(i)}
    end
    
    def change_minimum_age(int)
        @minimum_age = int
    end

end