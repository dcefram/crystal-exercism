enum Kind
  Equilateral = 1
  Isosceles   = 2
  Scalene     = 3
  Invalid     = 0
end

class Triangle
  property unique_sides : Kind

  def initialize(sides)
    # https://en.wikipedia.org/wiki/Triangle_inequality#Mathematical_expression_of_the_constraint_on_the_sides_of_a_triangle
    inequality = 2 * sides.max < sides.sum

    unless inequality
      raise ArgumentError.new
    end

    hashmap = {} of Float64 | Int32 => Int32
    unique = sides.sum(0) do |side|
      if hashmap[side]?.nil?
        hashmap[side] = 1
        next 1
      end

      0
    end

    @unique_sides = Kind.new(unique)
  end

  # specs indicated that isosceles should be at least 2 or more... ¯\_(ツ)_/¯
  getter?(isosceles : Bool) do
    @unique_sides < Kind::Scalene
  end

  forward_missing_to @unique_sides
end
