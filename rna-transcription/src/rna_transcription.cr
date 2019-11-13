module RnaComplement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U',
  }

  def self.of_dna(strand : String)
    strand.gsub(DNA_TO_RNA)
  end
end
