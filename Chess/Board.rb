require_relative "Piece"
require "byebug"

class Board
  def initialize
    @grid = Array.new(8){Array.new(8)}
    populate_board
  end

  def populate_board
    @grid[0].map! {|el| el = Piece.new}
    @grid[1].map! {|el| el = Piece.new}
    @grid[6].map! {|el| el = Piece.new}
    @grid[7].map! {|el| el = Piece.new}
  end

  def [](pos)
    row,col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def move_piece(start_pos, end_pos)
    raise "There is no piece on your starting position" if self[start_pos].nil?
    raise "Invalid ending position" if !self[end_pos].nil?

    self[end_pos] = self[start_pos]
    self[start_pos] = nil
  end
end
