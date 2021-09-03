class StartGame
  def initialize
    @start_game = start_game
  end
#do we do anything else here?

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
