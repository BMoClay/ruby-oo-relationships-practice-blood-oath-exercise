require 'date'
class Follower
    attr_reader :name, :age, :life_motto
    @@all = []
    
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end
    
    def self.all
        @@all
    end

    def cults
        BloodOath.all.select{|cults| cults.follower == self}
    end

    def join_cult(cultarg)
        if self.age > cultarg.minimum_age 
        BloodOath.new(Date.today, cultarg, self)
        else 
            puts "sorrrrry"
        end
    end

    def self.of_a_certain_age(int)
        self.all.select{|follower| follower.age >= int}
    end

    def my_cults_slogans
        cults.map{|cults| cults.cult.slogan}
    end

    def self.activity
      activity = Follower.all.map do |follower| 
        {follower => follower.cults.count}
      end
      follows = activity.sort_by do |follower| 
        follower.values[0]
      end
      follows.reverse
    end

    def self.most_active
        self.activity[0]
    end

    def self.top_ten
        self.activity[0..9]
    end

    def fellow_cult_members
        Follower.all.select do |follower| 
            follower.cults & self.cults && follower != self
        end
    end
         
    
end