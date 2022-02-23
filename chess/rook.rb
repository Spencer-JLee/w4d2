require_relative 'piece.rb'
require_relative 'slideable.rb'

class Rook < Piece
  include Slidable

  # def initialize
  #   super
  # end

  private

  def move_dirs
    'horizontal'
  end
end