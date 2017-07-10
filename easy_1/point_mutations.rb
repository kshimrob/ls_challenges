=begin

input: string
output: integer (non-matches) !=

datastructure: array of chars (each)

constants: none
approach:

=end

class DNA
  def initialize(dna_string)
    @dna1 = dna_string
  end

  def hamming_distance(dna2)
    @dna1.length > dna2.length ? max_char = dna2.length : max_char = @dna1.length
    hamming_distance = 0
    dna2_acids = dna2.chars

    @dna1.chars.each_with_index do |acid, idx|
      hamming_distance += 1 if acid != dna2_acids[idx]
      break if max_char == idx + 1
    end
    hamming_distance
  end
end