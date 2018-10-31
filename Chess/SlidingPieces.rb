require_relative "Piece"

class Rook < Piece
  include Slideable

  def symbol
    :R
  end

  def move_dirs
    horizontal_dirs
  end
end

class Bishop < Piece
  include Slideable

  def symbol
    :B
  end

  def move_dirs
    diagonal_dirs
  end
end

class Queen < Piece
  include Slideable

  def symbol
    :Q
  end

  def move_dirs
    horizontal_dirs + diagonal_dirs
  end

end

module Slideable
  HORIZONTAL_DIRS = [[1,0], [0,1], [-1,0], [0,-1]]
  DIAGONAL_DIRS = [[1,1], [-1,1], [-1,-1], [1,-1]]

  def moves
    possible = move_dirs
    result = []
    possible.each do |row|
      result << [@current_pos[0] + row[0], @current_pos[1] + row[1]]
    end
  end

  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def grow_unblocked_moves_in_dir(dx,dy)
    result = []
    position = @current_pos
    while @board.valid_pos?(position) || @board[position].color == self.color
      position = [position[0] + dx, position[1] + dy]
      result << position
    end

    result
  end
end
