module VehicleInstructions
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end


class Vehicle
  include VehicleInstructions

  def initialize
    @speed = 0
    @direction = 'north'
  end
end

class Bike < Vehicle
  def initialize(type, weight)
    super
    @type = type
    @weight = weight
  end

  def ring_bell
    puts "Ring ring!"
  end
end

class Car < Vehicle
  def initialize(fuel, make, model)
    super
    @fuel = fuel
    @make = make
    @model = model
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

dirt = Bike.new('mountain', 10)
puts dirt.brake
dirt.ring_bell
toyota = Car.new(10, 'Toyota', 'Supra')
puts toyota.turn("south")
toyota.honk_horn