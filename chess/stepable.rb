module Stepable

  KNIGHT_DIRS = [[1,2], [-1,2], [2,1], [-2,1], [2,-1], [-2,-1], [1,-2], [-1,-2]]
  KING_DIRS = [[1,1], [0,1], [-1,1], [-1,0], [1,0], [-1,-1], [0,-1], [1, -1]]

  def moves
    moves = []
    row_idx = self.pos.first
    col_idx = self.pos.last

    if is_knight?
      KNIGHT_DIRS.each do |dir|
        moves << [row_idx + dir.first, col_idx + dir.last]
      end
    end

    if is_king?
      KING_DIRS.each do |dir|
        moves << [row_idx + dir.first, col_idx + dir.last]
      end
    end
    moves
  end


  private

  def move_diffs
    is_knight? = false
    is_king? = false
  end

end