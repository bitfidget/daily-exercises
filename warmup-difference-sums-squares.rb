# 1**2 + 2**2 + ... + 10**2 = 385

# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)**2 = 55**2 = 3025

class DifferentSquares
  def initialize(low,high)
    @numbers = (low..high).to_a
  end

  def calculate
    sum_of_squares = @numbers.map{|number| number ** 2}.inject(:+)
    square_of_sums = (@numbers.inject(:+)) ** 2
    @difference = sum_of_squares - square_of_sums
  end
  @difference
end

diff = DifferentSquares.new(1,100).calculate
puts diff

diff2 = DifferentSquares.new(1,2).calculate
puts diff2

diff3 = DifferentSquares.new(1,10).calculate
puts diff3


numbers = (1..100).to_a
sum_of_squares = numbers.map{|number| number ** 2}.inject(0, &:+)
square_of_sums = (numbers.inject(0, &:+)) ** 2
difference = sum_of_squares - square_of_sums


# puts numbers
# puts sum_of_squares
# puts square_of_sums
# puts difference



