=begin

input: optional #'s that will be used as the divisor for multiples + limit (mandatory)
output: sum of the multiples

1. get all the multiples of the numbers up to the limit
2. use reduce to sum them up

data structure: store multiples in an array

constants: default numbers

private methods?

=end

require 'pry'

# class SumOfMultiples
#   DEFAULT_NUMS = [3, 5]

#   def initialize(*args)
#     @numbers = args
#   end

#   def self.to(limit)
#     create_multiples_list(limit).reduce(:+)
#   end

#   def to(limit)
#     create_multiples_list(limit).reduce(:+)
#   end

#   private

#   def create_multiples_list(limit)
#     multiples = []
#     1.upto(limit - 1) do |num|
#       if @numbers.any? {|divisor| num % divisor == 0}
#         multiples << num
#       end
#     end
#     multiples
#   end

#   def self.create_multiples_list(limit)
#     multiples = [0]
#     1.upto(limit - 1) do |num|
#       if DEFAULT_NUMS.any? {|divisor| num % divisor == 0}
#         multiples << num
#       end
#     end
#     multiples
#   end
# end

class SumOfMultiples
  def self.to(limit, multiples = [3, 5])
    (0...limit).select do |number|
      multiples.any? { |multiple| number % multiple == 0 }
    end.reduce(:+)
  end

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    self.class.to(limit, @multiples)
  end
end

# class SumOfMultiples
#   def initialize *multiples
#     @multiples = multiples.empty? ? [3, 5] : multiples
#   end

#   def self.to up_to
#     SumOfMultiples.new.to up_to
#   end

#   def to up_to
#     (1...up_to).select { |number| multiple? number }
#                .inject(0) { |sum, number| sum + number }
#   end

#   private

#   def multiple? number
#     @multiples.any? { |multiple| number % multiple == 0 }
#   end
# end