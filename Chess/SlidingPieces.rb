require_relative "Piece"

class Rook < Piece
  include Slideable

  def symbol

  end

  def move_dirs

  end
end

class Bishop < Piece
  include Slideable

  def symbol

  end

  def move_dirs

  end
end

class Queen < Piece
  include Slideable

  def symbol

  end

  def move_dirs

  end
end

module Slideable
  HORIZONTAL_DIRS = []
  DIAGONAL_DIRS = []

  def moves
    
  end

  def horizontal_dirs

  end

  def diagonal_dirs

  end

  def grow_unblocked_moves_in_dir(x, y)

  end
end
