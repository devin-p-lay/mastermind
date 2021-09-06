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

def guess_attempt
  gets.chomp.to_a
end
# call iinstructions method
def player_quit
end
# quit
def player_cheat
end

def guess_count
end
# cheat outputs SecretCode
