class Player
  def initialize
  end
end

#anything the player can do at any time

def start_game_input
   prompt = gets.chomp
  if prompt == 'p'
    play_message

    prompt_a_guess_message

    #game_flow
  elsif prompt == 'i'
    instructions_message

    # instructions
    # procceds to play
  elsif prompt == 'q'
    quits_message
    #quit s program
  elsif prompt == 'c'
    pumpkin_eater
  else
    puts "try again"
    #repeats intro
  end
end

def player_guess_attempt
  gets.chomp.to_a
end
# call iinstructions method

def player_cheat
  prompt == 'c'
  pumpkin_eater
end

def player_guess_count
  guess_count = []
  guess_count << guess += 1
end

def player_quit
end
# cheat outputs SecretCode
