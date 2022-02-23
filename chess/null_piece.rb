require_relative 'piece.rb'
require 'Singleton'

class NullPiece < Piece

  include Singleton
  
  attr_reader :symbol
  
  def initialize
    @symbol = " "
    @color = :null
  end

  def moves
    return []
  end


end