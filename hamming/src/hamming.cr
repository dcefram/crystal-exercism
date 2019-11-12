module Hamming
  def self.distance(first_strand : String, second_strand : String)
    if (first_strand.size != second_strand.size)
      raise ArgumentError.new("Strands should be of same length")
    end

    first_strand.chars.zip(second_strand.chars).count { |item| item[0] != item[1] }
  end
end
