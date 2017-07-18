=begin

1 thru 4 is I * n
5 is V
6 thru 8 is V(I * n - 5)
9 is IX
10 is X
10's are X * n
50 is L
40 is XL
60...80 is L(X * n - 5)
90 is XC
100 is C
500 is 
1000 is M
2000 is MM
900 is CM

1 % 5 = 1
2 % 5 = 2
3 % 5 = 3
4 % 5 = 4
5 % 5 = 0

1 / 5 = 0
2/ 5 = 0
3 / 5 = 0
4 / 5 = 0
5/ 5 = 1

6 % 5 = 1
7 % 5 = 2
8 % 5 = 3
9 % 5 = 4
10 % 5 = 0

6 / 5 = 1
7 / 5 = 1
8 / 5 = 1
9 / 5 = 1
10 / 5 = 2

=end

class Fixnum
  def to_roman
    number = self
    roman_string = ""

    tens = 'X' * (number / 10)
    ones = 'IX'
    
  end
end
