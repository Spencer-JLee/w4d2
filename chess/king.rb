require_relative 'piece.rb'
require_relative 'stepable.rb'

class King < Piece
  include Stepable

  # def move_diffs
  #   is_knight? = false
  #   is_king? = true
  # end
end