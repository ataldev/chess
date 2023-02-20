require_relative "./lib/board.rb"
require_relative "./lib/board_renderer_text.rb"
b = Board.new
b[[0,1]] = Rook.new(b, [0,1], :black)
b[[0,0]] = Queen.new(b, [0,0], :black)
# b[[6,6]] = King.new(b, [6,6], :white)
text_board = BoardRendererText.new(b)
puts text_board.render

p b[[0,0]].available_moves.size
p b[[0,0]].available_moves
