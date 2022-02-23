module Slidable

  HORIZONTAL_DIRS = []
  DIAGONAL_DIRS = []

  # use board to know when to stop sliding
  # stop sliding when blocked by same color
  def horizonal_dirs
    # return array with horizonal possible moves
    (1..7).each do |i|
      HORIZONTAL_DIRS << [0, i]
      HORIZONTAL_DIRS << [0, -i]
      HORIZONTAL_DIRS << [i, 0]
      HORIZONTAL_DIRS << [-i, 0]
    end
    return HORIZONTAL_DIRS
  end

  def diagonal_dirs
    (1..7).each do |i|
      DIAGONAL_DIRS << [i, i]
      DIAGONAL_DIRS << [-i, -i]
      DIAGONAL_DIRS << [i, -i]
      DIAGONAL_DIRS << [-i, i]
    end
    return DIAGONAL_DIRS
  end

  # return an array of places a Piece can move to
  # use move_dirs
  def moves
    moves = []
    row, col = self.pos
    
    if move_horizontal?
      HORIZONTAL_DIRS.each do |pos|
        moves << [row_idx + pos.first, col_idx + pos.last]
      end
    end
    if move_diag?
      DIAGONAL_DIRS.each do |pos|
        moves << [row_idx + pos.first, col_idx + pos.last]
      end
    end
    moves
  end

  
  
  private 
  # why/how to call move_dirs from moves, and why is it overwritten by subclass?
  def move_dirs
    # overwritten by subclass
    # check what class is via conditional, tell moves to ignore constants
    #use is_a?() to check class (i.e. a rook vs a bishop)
    #use conditional to tell moves to ignore either HORIZONATL or DIAGONALS
    # move_horizontal? = false
    # move_diag? = false
  end

  def grow_unblocked_moves_in_dir(dx,dy)
  end

  

end