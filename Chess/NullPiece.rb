class NullPiece < Piece
  include Singleton

  def initialize
    @color
    @symbol
  end

  def color
    @color
  end

  def symbol
    @symbol
  end

  def moves

  end
end
