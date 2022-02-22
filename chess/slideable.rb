module Slidable
  # use board to know when to stop sliding
  # stop sliding when blocked by same color
  def horizonal_dirs
    # return array with horizonal possible moves
  end

  def diagonal_dirs
    #... diagonal array
  end

  def moves
    # return an array of places a Piece can move to
    # self.pos
    # use move_dirs
  end

  
  
  private 

  def move_dirs
    # overwritten by subclass
  end

  def grow_unblocked_moves_in_dir(dx,dy)
  end

  HORIZONTAL_DIRS = []
  DIAGONAL_DIRS = []

end