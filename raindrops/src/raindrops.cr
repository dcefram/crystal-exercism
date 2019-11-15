module Raindrops
  FACTORS = [
    {3, "Pling"},
    {5, "Plang"},
    {7, "Plong"},
  ]

  def self.convert(num : Int16)
    converted = FACTORS.join("") { |(factor, str)| num.divisible_by?(factor) ? str : "" }
    converted.empty? ? num.to_s : converted
  end
end
