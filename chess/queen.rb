require_relative 'piece.rb'

class Queen < Piece 
  include Slidable 
  def move_dirs
    # overwritten by subclass
  end
end