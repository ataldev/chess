class Pawn < Piece

  def forward_dir
    color == :black ? -1 : 1
  end
  
  def starting_pos
    color == :black ? 6 : 1
  end

  def available_moves
    moves = []
    current_r, current_c = location

    one_forward = [current_r + forward_dir, current_c]
    if board.empty?(one_forward) 
      moves << one_forward
    end

    two_forward = [current_r + (forward_dir * 2), current_c]
    if current_r == starting_pos && board.empty?(one_forward) && board.empty?(two_forward)
      moves << two_forward
    end

    diag_left = [current_r + forward_dir, current_c + 1]
    diag_right = [current_r + forward_dir, current_c - 1]
    if(enemy?(diag_left))
      moves << diag_left
    end
    if enemy?(diag_right)
      moves << diag_right
    end
    moves

  end
  
  def to_s
    color == :black ? "♙" : "♟"
  end

end