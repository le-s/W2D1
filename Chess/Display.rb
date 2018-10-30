require_relative "Board"
require_relative "cursor"

require 'colorize'

class Display
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    @board.grid.each do |row|
      row.each do |spot|
        if spot.nil?
          print "# "
        else
          print "P "
        end
      end

      puts " "
    end
  end
end

def display_with_cursor

end

if __FILE__ == $PROGRAM_NAME
  board = Board.new
  display = Display.new(board)
  display.render
end
