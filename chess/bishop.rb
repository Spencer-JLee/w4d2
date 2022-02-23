require_relative "piece.rb"
require_relative 'slideable.rb'

class Bishop < Piece 
  include Slidable
  # def move_dirs
  #   move_horizontal? = false
  #   move_diag? = true
  # end
end