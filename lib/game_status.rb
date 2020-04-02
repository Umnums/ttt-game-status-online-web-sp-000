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
counter = 0
def won?(board)
  counter = 0
  WIN_COMBINATIONS.each do |combination|
    counter += 1
    combination.all? do |tokens|
      tokens == "X"
      puts WIN_COMBINATIONS[counter]
      return WIN_COMBINATIONS[counter]
    end
  end

end

won?(board)
