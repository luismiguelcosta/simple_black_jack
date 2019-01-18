puts "Do you want to play Black Jack against the computer?"
user_choice = gets.chomp

player_score = 0
bank_score = 0

def new_bank_card
  bank_score = rand(16..21)
end

def new_player_card
  player_score = rand(1..11)
end

def current_game
  puts "Your score is #{player_score} and the bank score is #{bank_score}"
end

def end_result_message
  if player_score == 21
    puts "Black Jack! Congratulations on beating the bank. You are the winner!"
  elsif player_score > bank_score
    puts "You win!"
  elsif player_score == new_bank_card
    puts "Push, the bet is a tie."
  else
    puts "You lost..."
  end
end

def play
  loop do
    puts "Do you want a new card?"
    user_choice = gets.chomp
    if user_choice.downcase == "yes"
      bank_score = bank_score + bank_score.new_bank_card
      player_score = player_score + layer_score.new_player_card
    elsif user_choice.downcase == "no"
      end_result_message
    else
      puts "#{user_choice} is an incorrect answer"
    end
  end
end

if user_choice.downcase == "yes"
  puts "Your first card gives you #{player_score}"
  play
elsif user_choice.downcase == "no"
  puts "Ok, see you next time."
else
  puts "#{user_choice} is an incorrect answer."
end

