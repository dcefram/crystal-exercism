class Triangle
  def initialize(@sides : Array(Int32)); end

  getter?(equilateral : Bool) do
    @sides.all? { |side| side != 0 && side === @sides[0] }
  end

  getter?(isosceles : Bool) do
    iso = @sides.find { |side| side != 0 && @sides.count(side) >= 2 }

    # There should be at least 2 sides that are equal, but the sum of the equal sides should
    # not be smaller than the unequal side
    !iso.nil? && !@sides.find do |side|
      iso_count = @sides.count(iso)
      iso_count == 3 || (side != iso && side <= iso * iso_count)
    end.nil?
  end

  getter?(scalene : Bool) do
    @sides.find { |side| side != 0 && @sides.count(side) >= 2 }.nil?
  end
end
