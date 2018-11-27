class PigLatinizer
  
  attr_reader :text
  
  def initialize(text="")
    @text = text
  end

  def piglatinize(phrase=text)
    phrase.split(" ").inject("") do |string, word|
      if word.start_with?("a", "A", "e", "E", "i", "I", "o", "O", "u", "U")
        word += "way"
      elsif word.include?("a", "A", "e", "E", "i", "I", "o", "O", "u", "U")
        first_chunk = word.split (/([aeiou].*)/i)
        word = first_chunk[1] + first_chunk[0] + "ay"
      end
      string + word + " "
    end.strip
  end
end