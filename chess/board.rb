require_relative 'piece.rb'
require 'byebug'

class Board
  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
    build_board
    debugger
  end
  
  def build_board
    @board.map.with_index do |row, idx|
      if idx == 0 || idx == 1 || idx == 6 || idx == 7
        return row.map { |ele| Piece.new }
        # debugger
        # p row
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

b = Board.new