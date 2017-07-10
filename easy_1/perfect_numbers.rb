class PerfectNumber
  def self.classify(num)
    raise RuntimeError if num < 1
    sum = get_divisors(num).reduce(:+)

    if sum == num
      'perfect'
    elsif sum > num
      'abundant'
    else
      'deficient'
    end
  end

  private

  def self.get_divisors(num)
    divisors = []
    1.upto(num - 1) do |divisor|
      divisors << divisor if num % divisor == 0
    end
    divisors
  end
end