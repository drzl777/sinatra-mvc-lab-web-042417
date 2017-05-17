class PigLatinizer

  #attr_reader :word

  # def initialize(string_word)
  #   @word = string_word
  # end

  def piglatinize(string_word)
    first_vowel = string_word.downcase.scan(/[aeoui]/).first
    vowel_index = string_word.downcase.index(first_vowel)
    if vowel_index == 0
      piglatin = string_word + "way"
    else
      piglatin = string_word.slice(vowel_index,string_word.size) + string_word.slice(0,vowel_index) + "ay"
    end
  end

  def to_pig_latin(string_phrase)
    string_phrase.split.collect {|string_word| piglatinize(string_word)}.join(' ')
  end


end
