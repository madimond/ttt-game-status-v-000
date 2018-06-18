# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def turn_count (board)
  board.count {|token| token == "X" || token == "O"}
end

def current_player (board, currect_player = "X")
  turn_count(board).even? ? "X" : "O"
end


# Define your WIN_COMBINATIONS constant


WIN_COMBINATIONS = [
      [0,1,2], #win_combination[0]
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [6,4,2] #win_combination[7]
    ]


def won?(board)
board.all? {|i| i == "X" || i == "O"}
    WIN_COMBINATIONS.each do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]

      position_1 = board[win_index_1] # load the value of the board at win_index_1
      position_2 = board[win_index_2] # load the value of the board at win_index_2
      position_3 = board[win_index_3] # load the value of the board at win_index_3

      if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
        return win_combination # return the win_combination indexes that won.
      elsif
        false
      end
    end

end


  # turn_count(board) == 5
  #
  #


def full? (board)
  turn_count(board) == 9
end

def draw?

end
