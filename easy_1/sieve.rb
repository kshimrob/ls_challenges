=begin

INPUT: integer

OUTPUT: array of primes

- start from 2 and go up to integer

1. create a hash of integers and mark as 'P'
2. loop through hash and check if each integer is divisble by 2. if yes, mark 'C'
3. continue while increasing divisor by 1 each time
4. when complete, concatenate to arrays [2, 3] and any integer marked 'P'

=end

class Sieve 
  def initialize(integer)
    @int = integer
    @integers_hash = (4..integer).reduce({}){|a,v| a[v] = 'P'; a}
  end

  def primes
    2.upto(@int) do |num|
      @integers_hash.each_key do |k|
        @integers_hash[k] = 'C' if k % num == 0 && k != num
      end
    end

    [2, 3].concat(@integers_hash.select{|k, v| v == 'P'}.keys.to_a)
  end

end