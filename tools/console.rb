require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

heavens_gate = Cult.new("heavens gate", 1995, "oklahoma", "follow comet", 30)
loving_hut = Cult.new("loving hut", 2005, "brooklyn", "food peace", 30)
upstate_lovers = Cult.new("upstate lovers", 2010, "Newburg", "nature love", 30)
incel = Cult.new("incells", 2015, "online", "no wamin", 30)
crime_faces = Cult.new("crime_faces", 2020, "brooklyn", "fuck shit up", 30)

maggie = Follower.new("maggie", 30, "always freestyle")
ben = Follower.new("ben", 37, "I like what I'm doing")
dave = Follower.new("dave", 40, "angry")
bill = Follower.new("bill", 37, "it doesn't matter")
stewart = Follower.new("stewart", 35, "push it")
stewart2= Follower.new("stewart2", 18, "push it")
stewart3 = Follower.new("stewart3", 35, "push it")
stewart4 = Follower.new("stewart4", 35, "push it")
stewart5 = Follower.new("stewart5", 35, "push it")
stewart6 = Follower.new("stewart6", 35, "push it")
stewart7 = Follower.new("stewart7", 35, "push it")
stewart8 = Follower.new("stewart8", 35, "push it")
stewart9 = Follower.new("stewart9", 35, "push it")
stewart10 = Follower.new("stewart10", 35, "push it")

bo1 = BloodOath.new("2008-09-29", upstate_lovers, stewart)
bo2 = BloodOath.new("2010-03-09", incel, stewart)
bo3 = BloodOath.new("2000-01-29", crime_faces, dave)
bo4 = BloodOath.new("2020-09-09", incel, ben)
bo5 = BloodOath.new("1999-10-20", heavens_gate, bill)
bo6 = BloodOath.new("1999-10-20", heavens_gate, maggie)
bo7 = BloodOath.new("2010-03-09", loving_hut, stewart2)
bo8 = BloodOath.new("2010-03-09", incel, stewart3)
bo9 = BloodOath.new("2010-03-09", incel, stewart4)
bo10 = BloodOath.new("2010-03-09", incel, stewart5)
bo11 = BloodOath.new("2010-03-09", incel, stewart6)
bo12 = BloodOath.new("2010-03-09", incel, stewart7)
bo13 = BloodOath.new("2010-03-09", incel, stewart8)
bo14 = BloodOath.new("2010-03-09", heavens_gate, stewart3)
bo15 = BloodOath.new("2010-03-09", crime_faces, stewart3)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits