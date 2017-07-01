=begin

INPUT: number of items in each array 
OUTPUT: an array of arrays (each array has consecutive items...)

IDEAS:
- get string length
- find out how many times to do something
  length of string is 5
  1 digit series => 5
  2 digit series => 4
  3 digit series => 3
  4 digit series => 2
  5 digit series => 1

  length of string is 4
  1 digit series => 4
  2 digit series => 3
  3 digit series => 2
  4 digit series => 1



=end

class Series
  def initialize(string)
    @num_array = string.split('').map(&:to_i) #[0, 1, 2, 3, 4]
    @length = string.size
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > @length
    final_array = []
    (@length - slice_size + 1).times do |n|
      final_array << @num_array[n..(n + slice_size - 1)]
    end
    final_array
  end
end