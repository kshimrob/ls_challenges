=begin

A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10

input: word (string) => convert to upcase
output: number (score)

constants: scrabble scores
data structure: array (single characters), hash for the constant

assumptions/errors/ignore:
1. what if the string has invalid characters? (assume)
2. what if the string has more than one word? (assume)
3. what if it is an empty string? (return 0)

=end

require 'pry'

class Scrabble
  SCRABBLE_SCORES = {
    %w(A E I O U L N R S T) => 1, 
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10
  }

  def initialize(string)
    @word = string
    @word.nil? ? @letters = [] : @letters = @word.upcase.scan(/[A-Z]/)
  end

  def score
    final_score = 0
    SCRABBLE_SCORES.each do |key, value|
      @letters.each do |letter|
        # binding.pry
        if key.include?(letter)
          final_score += value
        end
      end
    end
    final_score
  end

  def self.score(word)
    self.new(word).score
  end
end

Scrabble.new('a').score