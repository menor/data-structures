
# create an array of 5xs and 5 os
# shuffle that
# get the first nine elements
# slice into three arrays of 3 elements

class Board
  attr_reader :board
  
  def initialize()
    pool = ['x','o'].cycle(5).to_a
    elements = pool.shuffle.first(9)
    @board = elements.each_slice(3).to_a
  end
end


# Driver code
# -----------

# Creates 10 boards
boards = (1..10).each do |i|
  Board.new
end

my_board = Board.new
# Tests for the right quantity os xs and os
puts my_board.board.count('x') <= 5 && my_board.board.count('o') <= 5


puts my_board.board.flatten.size == 9

