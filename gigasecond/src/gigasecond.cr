class Gigasecond
  def self.from(from : Time)
    from + 1_000_000_000.seconds
  end
end
