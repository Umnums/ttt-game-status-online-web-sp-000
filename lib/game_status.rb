# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left columns
  [1,4,7], # middle columns
  [2,5,8], # right columns
  [0,4,8], # diagonals
  [2,4,6] #diagonals
]

board = ["X", "X", "X","","","","","",""]
def won?(board)
  WIN_COMBINATIONS.each do |combination|
    combination.all? do |tokens|
      state = tokens == "X" || tokens == "O"
    end
  end
  return "#{state}"
end

won?(board)
