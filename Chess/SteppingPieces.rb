require_relative "Piece"

class Knight < Piece
  include Stepable
  def move_diffs

  end

  def symbol

  end
end

class King < Piece
  include Stepable
  def move_diffs

  end

  def symbol

  end
end

module Stepable
  def moves
  end


end
