require_relative "game_table"

def state_of_the_game(player_score, bank_score)
  return "Your score is #{player_score} and the bank score is #{bank_score}."
end

def end_game_message(player_score, bank_score)
  if player_score > 21
    return "Your score is greater than 21. You lost..."
  elsif player_score == 21
    return "Black Jack! Congratulations, you are the winner!"
  elsif player_score > bank_score
    return "You beat the bank! You win."
  elsif player_score == bank_score
    return "It's a push! The bet is a tie and you get your money back."
  else
    return "You lost..."
  end
end

def start_game
  puts "Do you want to play Black Jack against the computer?"
  play_or_not = gets.chomp
  if ["y", "yes"].include? play_or_not.downcase
    puts "Ok, let's play!"
    play_game
  elsif ["n", "no"].include? play_or_not.downcase
    puts "Ok, see you next time."
  else
    puts "#{play_or_not} is an incorrect answer."
  end
end

def play_game
  bank_score = pick_bank_score

  player_score = 0

  player_decision = nil

  loop do
    return puts end_game_message(player_score, bank_score) if player_score >= 21

    puts "Do you want a card?"
    player_decision = gets.chomp

    if ["y", "yes"].include? player_decision.downcase
      player_score = pick_player_card + player_score
      puts state_of_the_game(player_score, bank_score)
    elsif ["n", "no"].include? player_decision.downcase
      puts state_of_the_game(player_score, bank_score)
      return puts end_game_message(player_score, bank_score)
    else
      puts "#{player_decision} is not accepted."
    end
  end
end
