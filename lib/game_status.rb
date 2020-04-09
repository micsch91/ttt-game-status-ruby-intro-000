# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [

  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]

]

def won?(board)
   WIN_COMBINATIONS.each {|win_combination|
     index_0 = win_combination[0]
     index_1 = win_combination[1]
     index_2 = win_combination[2]

     position_1 = board[index_0]
     position_2 = board[index_1]
     position_3 = board[index_2]
}
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    else
    return false
    end
 end

  WIN_COMBINATIONS.each |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end


def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
    index = []
    index = won?(board)
    if index == false
      return nil
    elsif
       board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
