require_relative 'piece.rb'
require_relative 'stepable.rb'

class Knight < Piece
  include Stepable

  # def move_diffs
  #   is_knight? = true
  #   is_king? = false
  # end
end