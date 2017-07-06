=begin

initalization requires the string. Take each digit in the string and convert it to a number. 
3^n for each digit

data structure: array..use indices to keep track of nth power
constants: base we are working with; 

=end

class Trinary
  BASE = 3
  INVALID_CHARS = /[a-zA-Z3-9]/

  def initialize(trinary_string)
    @number = trinary_string
  end

  def to_decimal
    @number =~ INVALID_CHARS ? 0 : convert_number
  end

  private

  def convert_number
    decimal = 0
    @number.chars.reverse.each_with_index do |digit, idx|
      decimal += digit.to_i * (3 ** idx)
    end
    decimal
  end
end