module Hamming
  def self.distance(first_strand : String, second_strand : String)
    if (first_strand.size != second_strand.size)
      raise ArgumentError.new("Strands should be of same length")
    end

    first_strand.each_char.zip(second_strand.each_char).count { |(first, second)| first != second }
  end
end
