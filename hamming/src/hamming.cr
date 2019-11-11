module Hamming
  def self.distance(firstStrand : String, secondStrand : String)
    if (firstStrand.chars.size != secondStrand.chars.size)
      raise ArgumentError.new("Strands should be of same length")
    end

    # I can't find the proper way to loop in the docs, aside from using maps...
    distance = 0

    firstStrand.chars.map_with_index do |char, index|
      distance = distance + 1 if char != secondStrand.chars[index]
    end

    distance
  end
end
