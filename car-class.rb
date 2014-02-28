class Car
  attr_accessor :make, :colour, :doors, :top_speed
  def initialize(make, colour, doors, top_speed)
    @make = make
    @colour = colour
    @doors = doors
    @top_speed = top_speed
  end
  def output_all
    puts "You're driving a #{colour} #{make} #{doors}, see if you can hit #{top_speed}!"
  end
end

class Hybrid < Car
  attr_accessor :voltage, :battery_type
  def initialize
    @voltage = 24
    @battery_type = "Ni-Mh"
  end
end

class Petrol < Car
  attr_accessor :engine_size
  def initialize(engine_size)
    @engine_size = engine_size
  end
end
