# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

john = Lifter.new("John", 100)
ray = Lifter.new("Ray", 500)

golds = Gym.new("Gold's")
health_trax = Gym.new("Healthtrax")

ray_golds = Membership.new(50, golds, ray)
john_healthtrax = Membership.new(100, health_trax, john)
ray_healthtrax = Membership.new(70, health_trax, ray)

binding.pry

puts "Gains!"
