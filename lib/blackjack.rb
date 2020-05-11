def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = rand(1..11)
  number
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 cards = deal_card + deal_card
 display_card_total(cards)
 return cards
end

def hit?(number)
  prompt_user
  answer = get_user_input
  while answer != "h" &&  answer != "s"
    invalid_command
    prompt_user
    answer = get_user_input
  end 
  if answer == "h"
    return number += deal_card
  else 
    return number 
  end 
end

def invalid_command
 puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  number = initial_round
  while number <= 21
   number = hit?(number)
   display_card_total(number)
  end 
  end_game(number)
end 
