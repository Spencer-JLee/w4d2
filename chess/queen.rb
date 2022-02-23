require_relative 'piece.rb'
require_relative 'slideable.rb'

class Queen < Piece 
  include Slidable 
  def move_dirs
    'horizontal and diagonal'
  end
end