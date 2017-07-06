=begin

1. go through each digit in the octal string starting from the end(?) 
2. 8^0 and then incrememnt up * the digit => push to array
3. use reduce to sum the total
4. return the total (this is decimal)

=end

class Octal
  def initialize(octal_string)
    @octal = octal_string
  end

  def to_decimal
    digits = @octal.chars.reverse

    total = []
    digits.each_with_index do |digit, idx|
      return 0 if digit == '8' || digit == '9' || digit.match(/[a-zA-Z]/)
      total << digit.to_i * 8 ** idx
    end
    total.reduce(:+)
  end
end

# p Octal.new('1').to_decimal