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
    WIN_COMBINATIONS.each do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]

      position_1 = board[win_index_1] # load the value of the board at win_index_1
      position_2 = board[win_index_2] # load the value of the board at win_index_2
      position_3 = board[win_index_3] # load the value of the board at win_index_3
      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return win_combination # return the win_combination indexes that won.
      else
        false
      end
    #  position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1) #detect returns first element (position_1) & make sure position is taken (that it's either an X or O).
   end
end
  #  if board[0] == "X" && board[1] == "X" && board[2] == "X" || board[0] == "O" && board[1] == "O" && board[2] == "O"
  #    WIN_COMBINATIONS[0]
  #  elsif board[3] == "X" && board[4] == "X" && board[5] == "X" || board[3] == "O" && board[4] == "O" && board[5] == "O"
  #    WIN_COMBINATIONS[1]
  #  elsif board[6] == "X" && board[7] == "X" && board[8] == "X" || board[6] == "O" && board[7] == "O" && board[8] == "O"
  #    WIN_COMBINATIONS[2]
  #  elsif board[0] == "X" && board[3] == "X" && board[6] == "X" || board[0] == "O" && board[3] == "O" && board[6] == "O"
  #    WIN_COMBINATIONS[3]
  #  elsif board[1] == "X" && board[4] == "X" && board[7] == "X" || board[1] == "O" && board[4] == "O" && board[7] == "O"
  #    WIN_COMBINATIONS[4]
  #  elsif board[2] == "X" && board[5] == "X" && board[8] == "X" || board[2] == "O" && board[5] == "O" && board[8] == "O"
  #    WIN_COMBINATIONS[5]
  #  elsif board[0] == "X" && board[4] == "X" && board[8] == "X" || board[0] == "O" && board[4] == "O" && board[8] == "O"
  #    WIN_COMBINATIONS[6]
  #  elsif board[6] == "X" && board[4] == "X" && board[2] == "X" || board[6] == "O" && board[4] == "O" && board[2] == "O"
  #    WIN_COMBINATIONS[7]
  #  end
  # turn_count(board) > 1
  # turn_count(board) == 5
  #
  #
  # win_index_1 = win_combinations[0]
  # win_index_2 = win_combination[1]
  # win_index_3 = win_combination[2]
  # win_index_4 = win_combination[3]
  # win_index_5 = win_combination[4]
  # win_index_6 = win_combination[5]
  # win_index_7 = win_combination[6]
  # win_index_8 = win_combination[7]
  # win_index_9 = win_combination[8]

  # position_1 = board[win_index_1]
  # position_2 = board[win_index_2]
  # position_3 = board[win_index_3]
  # #
  # if position_1 == "X" && position_2 == "X" && position_3 == "X"
  #    WIN_COMBINATIONS[0]
  #  end


def full? (board)
  turn_count(board) == 9
end

def draw?

end
