require_relative "Piece"

class Knight < Piece
  include Stepable
  def move_dirs
    [[1,2], [1,-2], [-1,-2], [-1, 2], [2,1], [-2,1], [2,-1], [-2,-1]]
  end

  def symbol
    :N
  end
end

class King < Piece
  include Stepable

  def move_dirs
    [[1,1], [1,0], [1,-1], [0,-1], [-1,-1], [-1,0], [-1,1], [0,1]]
  end

  def symbol
    :K
  end
end

module Stepable
  def moves(current_pos)
    possible = move_dirs
    result = []
    possible.each do |row|
      result << [current_pos[0] + row[0], current_pos[1] + row[1]]
    end

    result
  end

  def move_dirs
  end
end
