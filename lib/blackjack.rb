def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input(a = gets.chomp)
  # code #get_user_input here
 a
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  num1 = deal_card
  num2 = deal_card
  display_card_total(num1 + num2)
  num1 + num2
end

def hit?(current_card_value)
  # code hit? here
  prompt_user
  user_imput = get_user_input
  while user_imput != "h" && user_imput != "s"
  invalid_command
  prompt_user
  user_imput = get_user_input
end
if user_imput == "h"
  current_card_value += deal_card
  end
  return current_card_value
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
    welcome
  total = initial_round
  until total > 21
    total = hit?(total)
  display_card_total(total)
  end
  end_game(total)
  
  
end
    
    
