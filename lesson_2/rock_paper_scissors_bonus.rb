
VALID_CHOICES = %w(r p sc sp l)
WINNING_THROWS = { 'r' => ['l', 'sc'], 'p' => ['r', 'sp'], 'sc' => ['p', 'l'],\
                   'sp' => ['r', 'sc'], 'l' => ['sp', 'p'] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_THROWS[first].include?(second)
end

def choice_to_word(choice)
  dictionary = { 'r' => 'Rock', 'p' => 'Paper', 'sc' => 'Scissors', \
                 'sp' => 'Spock', 'l' => 'Lizard' }
  dictionary[choice]
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def assign_points(player, computer)
  if win?(player, computer)
    [1, 0]
  elsif win?(computer, player)
    [0, 1]
  else
    [0, 0]
  end
end

def print_score(player_points, computer_points)
  prompt("Player: #{player_points} - Computer: #{computer_points}")
end

loop do
  prompt('Welcome to Rock, Paper, Scissors, Lizard, Spock')
  prompt('The match will be best-of-nine games')

  player_score = 0
  computer_score = 0

  while player_score < 5 && computer_score < 5

    choice = ''
    loop do
      prompt("Choose one: rock (r), paper (p), scissors (sc), Spock (sp), " \
             "or lizard (l):")
      choice = Kernel.gets().chomp()

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    Kernel.puts("You chose #{choice_to_word(choice)}; " \
                "Computer chose #{choice_to_word(computer_choice)}")

    player_score += assign_points(choice, computer_choice).first
    computer_score += assign_points(choice, computer_choice).last
    display_results(choice, computer_choice)
    print_score(player_score, computer_score)

    if player_score == 5
      prompt("Player wins the match, #{player_score} to #{computer_score}!")
    elsif computer_score == 5
      prompt("Computer wins the match, #{computer_score} to #{player_score}!")
    end
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you! Goodbye.")
