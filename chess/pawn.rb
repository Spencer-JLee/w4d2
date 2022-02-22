require_relative 'piece.rb'

class Pawn < Piece

  # UP_DIRS = [[0, 1]]
  # DOWN_DIRS = []
  # ATTACK_DIRS = []

  def symbol 

  end

  def moves

  end
  
  private
  def at_start_row?
    return true if self.pos.first == 1 || self.pos.first == 6 
    #must refactor to account for piece colors
    false
  end

  def forward_dir
    #returns 1 or -1
    return 1 if self.pos.first == 1
    -1
    #must refactor to account for piece colors
  end

  def forward_steps
    if at_start_row? 
      moves = [[forward_dir, 0], [forward_dir+1, 0]]
    else 
      moves = [forward_dir, 0]
    end
    moves
  end

  def side_attacks
    moves = []
    moves << [1, 1]
    moves << [-1, -1]
    moves << [1, -1]
    moves << [-1, 1]
    moves
  end
end