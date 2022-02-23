require 'colorize'
require_relative 'board.rb'
require_relative 'cursor.rb'

class Display

  attr_reader :board, :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    # print the board
    board.rows.each do |row|
      str = ""
      row.each do |ele|
        str += " #{ele.symbol} "
      end
      puts str
    end
    # show square at cursor pos in a different color
    # until cursor.get_input
    #   cursor.get_input
    # end
    # cursor.get_input.colorize(:color => :light_blue, :background => :red)
  end

  def test_play
    i = 0
    while i < 100
      self.render 
      cursor.get_input
      board.rows[cursor.cursor_pos].to_s.colorize(:color => :yellow, :background => :blue)
      i += 1
    end
  end

end

b = Board.new
display = Display.new(b)
display.test_play