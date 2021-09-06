require './lib'
class StartGame
  def initialize
    @start_game = start_game
  end
#do we do anything else here?
<<<<<<< HEAD

def intro
  puts "Welcome to MASTERMIND"
  puts "Would you like to (p)lay the game, read the (i)nstructions, or (q)uit?"
  starting = gets.chomp

  if starting == 'p'
    puts "play"
    #game_flow
  elsif starting == 'i'
    puts "instructions"
    # instructions
  elsif starting == 'q'
    puts "quit"
    #quits program
  else
    puts "try again"
    #repeats intro
  end

end
=======
puts "Welcome to MASTERMIND"
puts "Would you like to (p)lay the game, read the (i)nstructions, or (q)uit?"
starting = gets.chomp


if starting == 'p'
  puts "play"
  puts "I have generated a beginner sequence with four elements made up of:"
  puts  "(r)ed, (g)reen, (b)lue, and (y)ellow."
  puts "Use (q)uit at any time to end the game."
  puts "What's your guess?"
  #game_flow
elsif starting == 'i'
  puts "instructions"
  puts "****Rules of Gameplay****"
  puts "Your goal is to guess a secret code"
  puts "Each code is made up of 4 random elements"
  puts "I will give you hints along the way"
  puts "If you want to cheat type 'c'"
  puts "You are being timed..."

  # instructions
  # procceds to play
elsif starting == 'q'
  puts "quit"
  #quits program
else
  puts "try again"
  #repeats intro
end
# require "pry"; binding.pry
end
>>>>>>> f1ea5e30f7226fed70ab3939fff0f60ba4b269b3
