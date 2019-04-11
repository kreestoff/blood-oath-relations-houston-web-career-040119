class Follower
  attr_accessor :name, :age, :life_motto
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

  def join_cult(cult, initiation_date)
    BloodOath.new(initiation_date, cult, self)
  end

  def self.of_a_certain_age(number)
    Follower.all.select do |f|
      f.age >= number
    end
  end

  def cults
    blood_array = BloodOath.all.select do |b|
      b.follower == self
    end
    cults = blood_array.map do |bloodoath|
      bloodoath.cult
    end

  end

end
