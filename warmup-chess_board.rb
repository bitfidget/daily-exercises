# Grains
# There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. 
# Knowing that the king loved chess, the servant told the king he would like to have grains of wheat. 
# One grain on the first square of a chess board. Two grains on the next. Four on the third, and so on.
# There are 64 squares on a chessboard.
# Write a program that shows
# how many grains were on each square, and
# the total number of grains

square = 0
grains = 1
total = 0

while square < 64 do
  square += 1
  puts 'square ' + square.to_s
  puts grains.to_s + ' grains'
  total += grains
  grains = grains * 2
end

puts 'total grains = ' + total.to_s

# try the proper way...

class Board
  attr_accessor squares
  def squares
    i = 0
    grains = 1
    while squares.count < 64 do
      square[i] = grains
      i += 1
      grains = grains * 2 
    end
  end
end

board = Board.new
board.squares.each do |square|
  puts square 
end

# and mathildas way...

class Grain
  def square(number)
    2 ** (number - 1)
  end

  def total_grain
    (1..64).to_a.inject do |sum, number|
      sum + (2 ** (number - 1))
    end
  end
end

puts grain = Grain.new
puts grain.square(64)
puts grain.total_grain






