class Player
  def initialize(message)
    @message = message
  end

#anything the player can do at any time
  def gets_user_input
    gets.chomp.downcase.strip
  end

  def player_guess_attempt
    gets.chomp.split
  end
  # call iinstructions method
#
#   def player_cheat
#     prompt == 'c'
#     pumpkin_eater
#   end
#
#   def player_guess_count
#     guess_count = []
#     guess_count << guess += 1
#   end
#
#   def player_quit
#   end
# # cheat outputs SecretCode
#
#
#
#
end
