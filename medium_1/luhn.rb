require 'pry'

class Luhn
  def initialize(number)
    @number = number
  end

  def addends
    # turn into a string, chars, reverse, iterate over each (t/f boolean), reverse again and return
    addends = @number.to_s.chars.map(&:to_i).reverse
    second_idx = false

    addends.map! do |digit|
      if second_idx == false
        second_idx = true
        digit
      else
        second_idx = false
        doubled = digit * 2
        doubled > 9 ? doubled - 9 : doubled
      end
    end

    addends.reverse!
  end

  def checksum
    addends.reduce(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    luhn_object = Luhn.new(number)
    if luhn_object.valid? 
      number
    else
      luhn_object.transform_to_valid_luhn
    end
  end

  def transform_to_valid_luhn
    new_number = @number
    0.upto(9) do |i|
      if Luhn.new(new_number * 10 + i).valid?
    # binding.pry
        return new_number = new_number * 10 + i
        # exit
      end
    end
    new_number
  end
end