class Message

  def initialize
  end
#do we do anything else here?
  def welcome_message
    puts "Welcome to MASTERMIND"
    puts "Would you like to (p)lay the game, read the (i)nstructions, or (q)uit?"
  end

  def play_message
    puts  "play"
    puts  "I have generated a beginner sequence with four elements made up of:"
    puts  "(r)ed, (g)reen, (b)lue, and (y)ellow."
    puts  "Use (q)uit at any time to end the game."
  end

  def instructions_message
    puts "instructions"
    puts "****Rules of Gameplay****"
    puts "Your goal is to guess a secret code"
    puts "Each code is made up of 4 random elements"
    puts "I will give you hints along the way"
    puts "If you want to cheat type 'c'"
    puts "What do you want to do next?? (p)lay or (q)uit??"
  end

  def quits_message
      puts "quit"
      puts "COOOOOWWWWWAAAAARDDDD"
  end
# edge case placeholder
  def wrong_input
    puts "Please try again"
  end

  def pumpkin_eater #pass in arg
    puts "Here you go cheater: #{secret_code}"
  end

  def prompt_a_guess_message
     puts "What's your guess?"
  end

  def win_message
    puts "You did it!"
    puts "You are the MASTERMIND!"
  end

  def hint_message #pass in args
  # puts "#{guess_attempt} has #{hint[:correct_colors]} of the correct elements with #{hint[:correct_positions]} in the correct positions"
  # # build a guess_count
  # puts "You've taken #{guess_count} guess"
  puts "You have #{hint[:correct_colors]} colors correct and #{hint[:correct_positions]} colors in the correct position."

  end
end
