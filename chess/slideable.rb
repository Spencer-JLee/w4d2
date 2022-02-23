module Slidable

  HORIZONTAL_DIRS = [
    [1, 0],
    [-1, 0],
    [0, 1],
    [0, -1]
].freeze
  DIAGONAL_DIRS = [
    [1, 1],
    [-1, -1],
    [-1, 1],
    [1, -1]
].freeze

  # use board to know when to stop sliding
  # stop sliding when blocked by same color
  def horizonal_dirs
    # return array with horizonal possible moves
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  # return an array of places a Piece can move to
  # use move_dirs
  def moves
    moves = []
    move_dirs.each do |dir|
      moves << grow_unblocked_moves_in_dir(dir)
    end
    moves
  end



  private 

  def move_dirs
    # overwritten by subclass
    raise "No dirs given"
  end

  def grow_unblocked_moves_in_dir(dx,dy)
    # create an array to collect moves
    possible_moves = []
    # get the piece's current row and current column
    row, col = self.pos
    valid_pos = true
    # in a loop:
    while valid_pos
      # continually increment the piece's current row and current column to generate a new position
      row += dx
      col += dy
      # stop looping if the new position is invalid (not on the board); the piece can't move in this direction
      if row < 0 || row > 7 || col < 0 || col > 7
        valid_pos = false
      end
      # if the new position is empty, the piece can move here, so add the new position to the moves array
      if self.board[row, col].is_a?(NullPiece)
        possible_moves << [row, col]
        # if the new position is occupied with a piece of the opposite color, the piece can move here (to capture the opposing piece), so add the new position to the moves array
      elsif self.board[row, col].color != self.color
        possible_moves << [row, col]
        valid_pos = false
      else
        valid_pos = false
      end
        # but, the piece cannot continue to move past this piece, so stop looping
      # if the new position is occupied with a piece of the same color, stop looping
    end

    # return the final moves array
    possible_moves
  end

  

end