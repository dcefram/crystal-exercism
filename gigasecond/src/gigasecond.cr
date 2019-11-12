module Gigasecond
  SECONDS = 1_000_000_000

  def self.from(from : Time)
    from + Gigasecond::SECONDS.seconds
  end
end
