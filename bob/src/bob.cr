module Bob
  class Sentence
    def initialize(@text : String); end

    getter?(question : Bool) { @text.ends_with?('?') }

    getter?(yelling : Bool) { @text[/[A-Z]/]? != nil && @text.upcase == @text }

    getter?(yelling_question : Bool) { question? && yelling? }

    getter?(silent_treatment : Bool) { @text.blank? }
  end

  def self.hey(text : String)
    case Sentence.new(text)
    when .yelling_question?
      "Calm down, I know what I'm doing!"
    when .question?
      "Sure."
    when .yelling?
      "Whoa, chill out!"
    when .silent_treatment?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
