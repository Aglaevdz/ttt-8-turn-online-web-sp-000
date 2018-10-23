require "pry"

def turn(board)

  while valid_move?(board, index) == " "
    puts "Please enter 1-9:"
    input = gets.strip
    input_to_index(input)
    move(board, index)
    turn(board)
  end
end

  def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board [8]} "
end
  def input_to_index(input)
  index = input.to_i - 1
end
  def move(board, index, value = "X")
  puts board[index.to_i] = value
end

  def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board,index)
  if !position_taken?(board,index) && (index).between?(0,8)
   true
  end
end
