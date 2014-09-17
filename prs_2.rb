# 1. Everyone must choose either p, r, or s. 
# 2. Compare: p > r, r > s, s > p, and tie condition. 
# 3. Play again? 

CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}
puts "Welcome to Mortal Combat, the Paper, Rock, Scissor Reboot."

def display_winning_message(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper wraps rock!"
  when 'r'
    puts "Rock smashes scissors!"
  when 's'
    puts "Scissors cuts paper!"
  end
end

    

loop do 
  # Player makes a pick.
  begin
    puts "Pick one: p) Paper, r) Rock, s) Scissors"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  # Computer makes a pick.
  computer_choice = CHOICES.keys.sample


  if player_choice == computer_choice
    puts "It's a tie!"
  elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
    display_winning_message(player_choice)
    puts "You won!"
  else
    display_winning_message(computer_choice)
    puts "Computer won!"
  end
     
  puts "Play again? (y/n)"
  break if gets.chomp.downcase != 'y'   

end

puts "Goodbye!"
