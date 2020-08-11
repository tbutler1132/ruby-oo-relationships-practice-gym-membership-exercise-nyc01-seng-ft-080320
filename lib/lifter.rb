class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end 
  end 

  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end 

  def total_cost
    memberships.map do |membership|
      membership.cost 
    end.sum
  end

  def self.all
    @@all
  end 
end
