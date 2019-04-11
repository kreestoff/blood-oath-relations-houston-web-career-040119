require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

f1 = Follower.new("Chris", 35, "Whatever...")
f2 = Follower.new("Paola", 35, "Something is something")
f3 = Follower.new("Sonja", 40, "Where are we going?")
f4 = Follower.new("Mike", 40, "if it bleeds i can kill it")
f5 = Follower.new("Alex", 10, "it wasn't me")
f6 = Follower.new("Isaac", 7, "it wasn't me")

c1 = Cult.new("Space Pirates", "Columbus", 2010, "get the space booty")
c2 = Cult.new("Flat Earthers", "Detroit", 1432, "there's an edge")

b1 = BloodOath.new("_2016-12-12_", c1, f1)
b2 = BloodOath.new("_2016-12-12_", c1, f2)
b3 = BloodOath.new("_2016-12-12_", c1, f3)
b4 = BloodOath.new("_2016-12-12_", c1, f4)
b5 = BloodOath.new("_2016-12-12_", c1, f5)
b6 = BloodOath.new("_2016-12-12_", c1, f6)
b7 = BloodOath.new("_2018-02-12_", c2, f1)
b8 = BloodOath.new("_2018-02-12_", c2, f2)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
