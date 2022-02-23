require_relative "piece.rb"
require_relative 'slideable.rb'

class Bishop < Piece 
  include Slidable
  def move_dirs
    'diagonal'
  end
end