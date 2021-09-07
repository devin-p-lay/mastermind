#this will be our runner file
# require './lib/secret_code.rb'
# require './lib/evaluating_guess.rb'
require './lib/player.rb'
require './lib/message.rb'
require './lib/game.rb'

#create menu class???
message = Message.new
player = Player.new(message)

game = Game.new(message, player)
