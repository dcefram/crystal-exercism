MAP_TABLE = {
  'G' => 'C',
  'C' => 'G',
  'T' => 'A',
  'A' => 'U',
}

module RnaComplement
  def self.of_dna(strand : String)
    strand.each_char.reduce("") do |str, char|
      str + (MAP_TABLE[char]? || char)
    end
  end
end
