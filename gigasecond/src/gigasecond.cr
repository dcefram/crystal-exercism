module Gigasecond
  SECONDS = 1E9

  def self.from(from : Time)
    from + Gigasecond::SECONDS.seconds
  end
end
