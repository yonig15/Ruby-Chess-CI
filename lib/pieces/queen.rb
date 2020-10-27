# frozen_string_literal: true

require_relative 'piece'

# logic for queen chess piece
class Queen < Piece
  def initialize(board, args)
    board.add_observer(self)
    @color = args[:color]
    @location = args[:location]
    @symbol = " \u265B "
    @moves = []
    @captures = []
  end

  private

  def move_set
    [[0, 1], [0, -1], [-1, 0], [1, 0], [1, 1], [1, -1], [-1, 1], [-1, -1]]
  end
end
