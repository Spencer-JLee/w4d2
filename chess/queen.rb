require_relative 'piece.rb'
require_relative 'slideable.rb'

class Queen < Piece 
  include Slidable 
  def move_dirs
    horizonal_dirs + diagonal_dirs
  end
end