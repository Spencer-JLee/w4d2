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
    # debugger
    row = pos.first
    col = pos.last
    @board[row][col]
  end
  
  def []=(pos, value)
    row = pos.first
    col = pos.last
    @board[row][col] = value
  end

  def move_piece(start_pos, end_pos)
    # there is no piece at start_pos or
    if self[start_pos].nil?
      raise 'no piece to move'
    end
    piece = self[start_pos] 
    self[start_pos] = nil
    self[end_pos] = piece
  end

end

# p b = Board.new