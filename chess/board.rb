require_relative 'piece.rb'
require 'byebug'

class Board
  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
    build_board
    # debugger
  end
  
  def build_board
    (0..8).each do |idx|
      if idx == 0 || idx == 1 || idx == 6 || idx == 7
        (0..8).each do |j|
          @board[idx][j] = Piece.new
        end
        #wtf is going with Array.each?
      end
    end
  end

  def [](pos)
  end

  def []=(pos)
  end

  def move_piece(start_pos, end_pos)
  end

end

p b = Board.new