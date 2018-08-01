require_relative 'play_game'

class Game

  include PlayGame

  def initialize
    @player_score = 0
    @computer_score = 0
    p "Welcome to rock, paper, scissors!"
    ask_player_input
  end

  def ask_player_input
    p "You can type r, p, s (for rock, paper, or scissors, respectively), x (which shows the score) or q (for quit): "
    player_input = gets.chomp
    start_game(player_input)
  end

  def start_game(player_input)
    case player_input
    when "r", "p", "s"
      play_game(player_input)
    when "x"
      p "Player: #{@player_score} | Computer: #{@computer_score}"
      ask_player_input
    when "q"
      p "Please don't go. :( Player: #{@player_score} | Computer: #{@computer_score}"
      exit
    else
      p "Your input is invalid."
      ask_player_input
    end
  end

end
