require_relative 'piece.rb'

class Rook < Piece
  include Slidable

  private
  def move_dirs 
    # arr = []
    # row_idx = self.pos.first
    # col_idx = self.pos.last
    # left = row_idx.take[col_idx]
    # right = row_idx.drop[col_idx]
    # up = board.select do |row|
    #   # if row != row_idx
    #   # shovel [row, col_idx] to arr
  end
end