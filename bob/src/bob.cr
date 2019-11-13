module Bob
  class Sentence
    def initialize(@text : String)
    end

    def is_question?
      @text.rchop?('?') != nil
    end

    def is_yelling?
      # would've used chars.one? but it does not seem to work properly.
      # It's returning false even if the block returned true
      @text.chars.find(&.ascii_letter?) && @text.upcase == @text
    end

    def is_yelling_question?
      is_question? && is_yelling?
    end

    def is_silent_treatment?
      @text.strip == ""
    end
  end

  def self.hey(text : String)
    sentence = Sentence.new text

    case sentence
    when .is_yelling_question?
      "Calm down, I know what I'm doing!"
    when .is_question?
      "Sure."
    when .is_yelling?
      "Whoa, chill out!"
    when .is_silent_treatment?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
