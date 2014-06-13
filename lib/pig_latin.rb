require "pig_latin/version"

module PigLatin
  def self.translate(word)
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

  private

  def self.vowel?(letter)
    ['a','e','i','o','u'].include? letter
  end
end
