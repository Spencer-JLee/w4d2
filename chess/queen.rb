require_relative 'piece.rb'

class Queen < Piece 
  include Slidable 
  def move_dirs
    move_horizontal? = true
    move_diag? = true
  end
end