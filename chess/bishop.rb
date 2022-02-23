require_relative "piece.rb"
require_relative 'slideable.rb'

class Bishop < Piece 
  include Slidable
  
  def symbol
    :b
  end

  def move_dirs
    diagonal_dirs
  end
end