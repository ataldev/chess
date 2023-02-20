require_relative "./lib/board.rb"
require_relative "./lib/board_renderer_text.rb"
b = Board.start_chess
text_board = BoardRendererText.new(b)
puts text_board.render