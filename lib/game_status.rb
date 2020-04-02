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

board = ["", "", "","","","","","",""]
counter = 0
def won?(board)
  counter = 0
  WIN_COMBINATIONS.each do |array|
    index_1 = array[0]
    index_2 = array[1]
    index_3 = array[2]
    pos1 = board[index_1]
    pos2 = board[index_2]
    pos3 = board[index_3]

    if ((pos1 == "X" && pos2 == "X" && pos3 == "X")||(pos1 == "O" && pos2 == "O" && pos3 =="O"))
      puts "#{array}"
      return array
    end
  end
  puts "No winning move"
end

won?(board)
