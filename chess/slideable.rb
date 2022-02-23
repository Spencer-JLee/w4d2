module Slidable

  HORIZONTAL_DIRS = [
    [1, 0],
    [-1, 0],
    [0, 1],
    [0, -1]
  ]
  DIAGONAL_DIRS = [
    [1, 1],
    [-1, -1],
    [-1, 1],
    [1, -1]
  ]

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
    row, col = self.pos
    
    # if move_dirs.include?('horizontal')
    #   HORIZONTAL_DIRS.each do |pos|
    #     moves << [row_idx + pos.first, col_idx + pos.last]
    #   end
    # end
    # if move_dirs.include?('diagonal')
    #   DIAGONAL_DIRS.each do |pos|
    #     moves << [row_idx + pos.first, col_idx + pos.last]
    #   end
    # end
    moves
  end



  private 

  def move_dirs
    # overwritten by subclass
    
  end

  def grow_unblocked_moves_in_dir(dx,dy)
  end

  

end