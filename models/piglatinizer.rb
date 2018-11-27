class PigLatinizer

  def initialize(text="")
  end

  def piglatinize(phrase)
    phrase_array = phrase.split(" ")
    latinized = ""
    phrase_array.each do |word|
      if word.start_with?("a", "A", "e", "E", "i", "I", "o", "O", "u", "U")
        word += "way"
      else
        first_chunk = word.split /([aeiou].*)/
        word = first_chunk[1] + first_chunk[0] + "ay"
      end
      latinized += word + " "
    end
    latinized[0..-2]
  end