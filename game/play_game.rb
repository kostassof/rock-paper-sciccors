module PlayGame

  def play_game(player_input)
    computer_choice = ["r", "p", "s"].sample
    p "Computer: #{computer_choice}"
    if player_input == computer_choice
      p "It's a tie!"
    elsif (player_input == 'p' && computer_choice == 'r') ||
          (player_input == 'r' && computer_choice == 's') ||
          (player_input == 's' && computer_choice == 'p')
      @player_score += 1
      p "You won!"
    else
      @computer_score += 1
      p "Computer won!"
    end
    p "Player: #{@player_score} | Computer: #{@computer_score}"
    ask_player_input
  end

end
