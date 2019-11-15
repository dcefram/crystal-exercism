module Raindrops
  FACTORS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong",
  }

  def self.convert(num : Int16)
    converted = FACTORS.each_key.reduce("") { |str, key| num % key == 0 ? "#{str}#{FACTORS[key]}" : str }
    converted.empty? ? "#{num}" : converted
  end
end
