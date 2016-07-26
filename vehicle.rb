class Vehicle
  def initialize(avg, wings = 0)
    @wings = wings
    @average_speed = avg
  end

  def travel_time(distance)
    distance / @average_speed
  end

  def number_of_wheels
    4
  end

  def number_of_engines
    1
  end

  def number_of_gears
    4
  end

  def number_of_wings
    raise NoWingsError
  end
end

class NoWingsError < StandardError
end

class ElectricCar < Vehicle

  def number_of_gears
    1
  end
end

class HybridCar < Vehicle

  def number_of_engines
    2
  end
end

class Motorcycle < Vehicle

  def number_of_wheels
    2
  end
end

class Plane < Vehicle

  def number_of_wheels
    6
  end

  def number_of_engines
    2
  end

  def number_of_gears
    1
  end

  def number_of_wings
    2
  end


end

class Bicycle < Vehicle

  def initialize(avg, gears)
    super
    @gears = gears
  end

  def number_of_wheels
    2
  end

  def number_of_engines
    0
  end

  def number_of_gears
    @gears
  end
end
