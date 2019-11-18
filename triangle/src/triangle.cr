class Triangle
  def initialize(@sides : Array(Int32)); end

  # There should be at least 2 sides that are equal, but the sum of any two sides should
  # not be smaller than the third side
  #
  # sides.sum = x + y + z
  # sides.sum - x = y + z (ie. sum of the other 2 sides)
  # y + z should be greater or equal to x
  #
  # I'm using less than here, as an inverse of >=, since I'm using .nil? in the end
  getter?(inequal : Bool) { @sides.find { |side| @sides.sum - side < side }.nil? }

  getter?(equilateral : Bool) do
    @sides.all? { |side| side != 0 && side === @sides[0] }
  end

  getter?(isosceles : Bool) do
    iso = @sides.find { |side| side != 0 && @sides.count(side) >= 2 }
    !iso.nil? && inequal?
  end

  getter?(scalene : Bool) do
    is_scalene = @sides.find { |side| side != 0 && @sides.count(side) >= 2 }.nil?
    is_scalene && inequal?
  end
end
