module Stepable


  def moves
    moves = []
    row, col = self.pos
    move_diffs.each do |move|
      new_row = row + move[0]
      new_col = col + move[1]
      if new_row < 0 || new_row > 7 || new_col < 0 || new_col > 7
        next
      elsif self.board[new_row, new_col].is_a?(NullPiece) || self.board[new_row, new_col].color != self.color
        moves << [new_row, new_col]
      end
    end 
    moves
  end

  private

  def move_diffs
    
  end

end