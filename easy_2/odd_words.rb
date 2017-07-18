=begin

input: string
output: string, with odd (indices) words reversed

constants: none
data structures: arrays (split)

errors/assumptions/ignore?:
1. with numbers (assumption: no #'s')
2. puncutation other than period (assumption: no other punctuations)
3. words that are larger than 20 letters (assumption: all 20 letters or less)
4. do we convert strings that have extra spaces to a final string that just has one string between each word
  (assumption: return string with single spaces)
5. no words? is the final string '' or '.' (assumption: no empty string?)

=end

class OddWords
  def initialize(sentence)
    @sentence = sentence
  end

  def odds_reverse
    words = @sentence.split(/[ .]/).delete_if {|string| string.empty?}
    final_sentence = words.each_with_index {|word, idx| word.reverse! if idx.odd?}.join(' ') 
    final_sentence = final_sentence + '.' if @sentence[-1] == '.'
    final_sentence
  end
end
