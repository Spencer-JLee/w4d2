require_relative 'piece.rb'
require_relative 'null_piece.rb'
require_relative 'bishop.rb'
require_relative 'knight.rb'
require_relative 'king.rb'
require_relative 'pawn.rb'
require_relative 'queen.rb'
require_relative 'rook.rb'
require 'byebug'

class Board
  attr_accessor :rows, :null_piece

  def initialize
    @null_piece = NullPiece.instance
    @rows = build_board
    combine_board
  end

  def build_board
    Array.new(8) { Array.new(8) }
  end

  def build_pawn
    Array.new(8, Pawn)
  end

  def build_null
    Array.new(8, null_piece)
  end

  def build_back
    [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
  end

  def combine_board

    @rows.map!.with_index do |row, i|
      if i == 0
        @rows[i] = build_back.map!.with_index do |piece, j|
          piece.new(:black, @rows, [0, j])
        end
      elsif i == 1
        @rows[i] = build_pawn.map!.with_index do |pawn, j|
          pawn.new(:black, @rows, [1, j])
        end
      elsif i == 7
        @rows[i] = build_back.map!.with_index do |piece, j|
          piece.new(:white, @rows, [7, j])
        end
      elsif i == 6
        @rows[i] = build_pawn.map!.with_index do |pawn, j|
          pawn.new(:white, @rows, [6, j])
        end
      else
        @rows[i] = build_null
      end
    end
  end

  def [](pos)
    row, col = pos
    @rows[row][col]
  end

  def []=(pos, value)
    row, col = pos
    @rows[row][col] = value
  end

  def move_piece(start_pos, end_pos)
    # there is no piece at start_pos or
    if self[start_pos].is_a?(NullPiece)
      raise 'no piece to move'
    end
    piece = self[start_pos] 
    self[start_pos] = null_piece
    self[end_pos] = piece
  end

  def valid_pos?(pos)
    row, col = pos
    if row < 0 || row > 7 || col < 0 || col > 7
      return false
    end
    true
  end

end