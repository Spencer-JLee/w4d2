require_relative "piece.rb"

class Bishop < Piece 
  include Slidable
  def move_dirs
    # overwritten by subclass
  end
end