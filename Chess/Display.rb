require_relative "Board"
require_relative "cursor"

require 'colorize'

class Display
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def display_with_cursor
    render
    until @cursor.get_input
      render
    end
  end

  def render
    puts "----------------"
    @board.grid.each_with_index do |row, i1|
      row.each_with_index do |spot, i2|
        if @cursor.cursor_pos == [i1, i2]
          if spot.nil?
            print "# ".colorize(:red)
          else
            print "P ".colorize(:red)
          end
        else
          if spot.nil?
            print "# "
          else
            print "P "
          end
        end
      end
      puts " "
    end
  end
end



if __FILE__ == $PROGRAM_NAME
  board = Board.new
  display = Display.new(board)
  display.display_with_cursor
end
