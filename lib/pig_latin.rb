require "pig_latin/version"

module PigLatin
  def self.translate(sentence)
    words = sentence.split(' ')

    words.map do |word|
      translate_word(word)
    end.join(' ')
  end

  private

  def self.translate_word(word)
    regexp = /\b(y|[bcdfghjklmnpqrstvwxz]*)([\w']+)\b/i

    first_letter = word.split(//).first

    match = regexp.match(word)
    first_group = match[1]
    second_group = match[2]

    if vowel?(first_letter)
      ending = 'way'
    else
      ending = 'ay'
    end

    second_group + first_group + ending
  end

  def self.vowel?(letter)
    ['a','e','i','o','u'].include? letter
  end
end
