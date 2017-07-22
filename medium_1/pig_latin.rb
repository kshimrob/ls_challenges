=begin

1. loop through each word
1. take string and convert to characters
2. if first letter is a vowel, add ay to end
3. if first letter is a consonant, move to end and add ay

=end

class PigLatin
  def self.translate(string)
    new_string = string.split.map do |word|
      if word.chars[0] =~ /[aeiou]/
        word + 'ay'
      else
        letters = word.chars
        letters << letters.shift << 'ay'
        letters.join
      end
    end
    new_string.join
  end
end

class PigLatin
  EXCEPTIONS = %w(xr yt)

  def self.translate(string)
    words = string.split
    new_words = []
    words.each do |word|
      if word.chars[0] =~ /aeiou/
        new_words << word + 'ay'
      else
        new_words << constanant_rearrange(word) + 'ay'
      end
    end

    new_words.join(' ')
  end

  def self.constanant_rearrange(word)
    return word if EXCEPTIONS.include?(word[0, 2])

    letters = word.chars
    until letters[0] =~ /[aeiou]/
      if letters[0] == 'q' && letters[1] == 'u'
        letters << letters.shift << letters.shift
      else
        letters << letters.shift
      end
    end
    letters.join
  end
end