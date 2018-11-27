class PigLatinizer
  attr_reader :text
 
  def initialize(text="")
    @text = text
  end 
  
  def piglatinize(phrase=text)
      string = phrase.split(" ").inject("") do |string, word|
        if word.start_with?("a", "A", "e", "E", "i", "I", "o", "O", "u", "U")
          word += "way"
        else
          first_chunk = word.split /([aeiou].*)/
          word = first_chunk[1] + first_chunk[0] + "ay"
        end
        latinized += word + " "
      end
      latinized.strip
  end
end