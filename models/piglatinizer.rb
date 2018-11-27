class PigLatinizer
  
  attr_reader :text
  
  def initialize(text="")
    @text = text
  end

  def piglatinize(phrase=text)
    phrase.split(" ").inject("") do |string, word|
      if word.start_with?("a", "A", "e", "E", "i", "I", "o", "O", "u", "U")
        word += "way"
      else 
        array = word.split (/([aeiou].*)/i)
        array[1] ||= ""
        word = array[1] + array[0] + "ay"
      end
      string + word + " "
    end.strip
  end
end