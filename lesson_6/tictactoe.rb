WINNING_LINES = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9],
  [1, 5, 9],
  [3, 5, 7]
].freeze
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
FIRST_MOVE = 'Choose'.freeze

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def initialize_scoreboard
  {'Player'=> 0, 'Computer'=> 0}
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt 'That\'s an invalid choice'
  end

  brd[square] = PLAYER_MARKER
end

def joinor(arr, delim = ', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delim)
  end
end

def computer_places_piece!(brd)
  square = nil
  # offense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  # defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  if empty_squares(brd).include?(5)
    square = 5
  end
  # random
  if !square
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k,v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    return 'Player' if brd.values_at(*line).count(PLAYER_MARKER) == 3
    return 'Computer' if brd.values_at(*line).count(COMPUTER_MARKER) == 3
  end
  nil
end

def score_update(winner, scores)
  if winner == 'player'
    scores['Player'] += 1
  else
    scores['Computer'] += 1
  end
end

def display_score(scores)
  puts "Player: #{scores['Player']} - Computer: #{scores['Computer']}"
end

def place_piece!(brd, player)
  if player == 'player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(current)
  current == 'player' ? 'computer' : 'player'
end

def who_goes_first?
  choice = FIRST_MOVE
  if FIRST_MOVE == 'Choose'
    loop do
      prompt 'Who goes first? (Player or Computer)'
      choice = gets.chomp.downcase
      break if ['player', 'computer'].include?(choice)
    end
  end
  choice
end

loop do
  scoreboard = initialize_scoreboard
  loop do
    first_player = who_goes_first?
    current_player = first_player
    board = initialize_board

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end  

    display_board(board)

    if someone_won?(board)
      score_update(detect_winner(board), scoreboard)
      display_score(scoreboard)
      prompt "#{detect_winner(board)} won this game!"
    else
      prompt 'It\'s a tie!'
    end
  
  break if scoreboard.values.include?(5)
  prompt 'Ready for the next game? (y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  
  end

  break if !scoreboard.values.include?(5)
  prompt "#{scoreboard.key(5)} won the match!"
  prompt 'Play again? (y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end
prompt 'Thanks for playing Tic Tac Toe! Goodbye!'
