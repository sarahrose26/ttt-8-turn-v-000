def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i-1
end

def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board,index)
      return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end

def move(array, index, value="X")
  array[index] = value
end

# def turn(board)
#   puts "Please enter 1-9:"
#   user_input = gets.strip.to_i
#   index = input_to_index(user_input)
#   if valid_move?(board, index)
#      return move(board, user_input)
#   else
#     turn(board)
#   end
#   move(board, user_input)
#   display_board(board)
# end

def turn(board)
   puts "Please enter 1-9:"
   input = gets.strip

   if valid_move?(board, input)
     move(board, input)
     display_board(board)
   else
     while valid_move?(board, input) == false
       puts "Please enter 1-9:"
       input = gets.strip
     end
   end
 end   
