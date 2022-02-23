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
  attr_reader :rows, :null_piece

  def initialize
    @rows = build_board
    @null_piece = NullPiece.instance
  end

  # Piece#initialize(color, board, pos)
  def build_board
    @rows = Array.new(8) { Array.new(8, null_piece) }
    @rows[0].map!.with_index do |piece, i|
      if i == 0 || i == 7
        piece = Rook.new(:black, @rows, [0,i])
      elsif i == 1 || i == 6
        piece = Knight.new(:black, @rows, [0, i])
      elsif i == 2 || i == 5
        piece = Bishop.new(:black, @rows, [0, i])
      elsif i == 3
        piece = Queen.new(:black, @rows, [0, i])
      elsif i == 4
        piece = King.new(:black, @rows, [0, i])
      end
    end

    @rows[7].map!.with_index do |piece, i|
      if i == 0 || i == 7
        piece = Rook.new(:white, @rows, [7,i])
      elsif i == 1 || i == 6
        piece = Knight.new(:white, @rows, [7, i])
      elsif i == 2 || i == 5
        piece = Bishop.new(:white, @rows, [7, i])
      elsif i == 3
        piece = Queen.new(:white, @rows, [7, i])
      elsif i == 4
        piece = King.new(:white, @rows, [7, i])
      end
    end

    @rows[6].map!.with_index { |piece, i| piece = Pawn.new(:white, @rows, [6, i])}

    @rows[1].map!.with_index { |piece, i| piece = Pawn.new(:black, @rows, [1, i])}
    # (0..8).each do |idx|
    #   if idx == 0 || idx == 1 || idx == 6 || idx == 7
    #     (0..8).each do |j|
    #       @board[idx][j] = Piece.new
    #     end
        #wtf is going with Array.each?
    #   end
    # end
  end

  def build_pieces

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

end

# p b = Board.new