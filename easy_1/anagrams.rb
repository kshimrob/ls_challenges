=begin

initialize: string
method call: 1 argument - array of potential anagrams (strings)
output of method call: array of any words that match the string (select)

data structure: array
constants: none

1. rearrange letters in string from low to high
2. iterate through each word in array and rearrange letters in string from low to high DOWNCased
SKIP if the original word matches the original word in array => downcase
3. if there is a match, push to final array (original word)
4. return array

=end

class Anagram
  def initialize(string)
    @original_word = string
  end

  def match(anagrams_array)
    anagrams_array.each_with_object([]) do |string, array| 
      array << string if sort_letters(@original_word) == sort_letters(string) && 
      @original_word.downcase != string.downcase
    end
  end

  private

  def sort_letters(word)
    word.downcase.chars.sort.join
  end
end