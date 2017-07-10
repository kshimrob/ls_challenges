=begin


=end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = Hash.new(0)

    @phrase.scan(/\b[\w']+\b/) do |word|
      count[word.downcase] += 1
    end

    count
  end
end
