class PigLatinizer
  
  attr_reader :text
  
  def initialize(text="")
    @text = text
  end

  def piglatinize(phrase=text)
    phrase.split(" ").inject("") do |string, word|
      if word.start_with?("a", "A", "e", "E", "i", "I", "o", "O", "u", "U")
        word += "way"
      else first_part = word.split (/([aeiou].*)/i)
        word = first_part[1] + first_part[0] + "ay"
      else
        word += "ay"
      end
      string + word + " "
    end.strip
  end
end