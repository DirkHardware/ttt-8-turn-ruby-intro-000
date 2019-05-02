def turn(board)
  #display_board(board)
  puts "Please Enter 1-9"
<<<<<<< HEAD
  index = input_to_index
  if valid_move?(board, index) == true
    move(board, index)
  elsif valid_move?(board, index) == false || valid_move?(board, index) == nil
    puts "Invalid move. Please Enter 1-9"
    turn(board)
  end
=======
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index)
  else
    puts "Invalid move. Please Enter 1-9"
  end
  #turn(board)
>>>>>>> c9b8e05aa2dddc93ec6099c750f6fe37f32722f0
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input = gets.strip)
  index = user_input.to_i
  index = index - 1
  return index
end

def move (board, index, value = "X")
  board[index] = value
  display_board(board)
end

def position_taken?(board, index)
  if board[index] == "X"
    return true
  elsif board[index] == "O"
    return true
  elsif board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return nil
  end
end

def valid_move?(board, index)
<<<<<<< HEAD
  if position_taken?(board, index) == false
=======
  if  position_taken?(board, index) == false
>>>>>>> c9b8e05aa2dddc93ec6099c750f6fe37f32722f0
    return true
  elsif position_taken?(board, index) == true
    return false
  elsif position_taken?(board, index) == nil
    return nil
  end
end
