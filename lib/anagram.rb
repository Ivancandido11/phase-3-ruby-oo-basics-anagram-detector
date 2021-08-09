class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(array_of_words)
    letter_array = @word.chars
    matched_word = []
    array_of_words.each do |word|
      letters = word.chars
      if letters.sort == letter_array.sort
        matched_word << word
      end
    end
    matched_word
  end

end
