require_relative 'piece.rb'

class Rook < Piece
  include Slidable

  private
  def move_dirs 
    move_horizontal? = true
    move_diag? = false
  end
end