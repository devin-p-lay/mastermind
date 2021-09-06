require 'rspec'
require './lib/start_game'
<<<<<<< HEAD
=======
require './lib/secret_code'
>>>>>>> ddb479ff488706c279dd1d62fce8261958458cc2

RSpec.describe StartGame do
  it "exists" do
    start_game = StartGame.new
    expect(start_game).to be_an_instance_of(StartGame)
  end

<<<<<<< HEAD
  

=======
<<<<<<< HEAD
=======
  it 'introduces the game' do
    start_game = StartGame.new
    expect(start_game.welcome).to eq(intro)
  end

>>>>>>> ddb479ff488706c279dd1d62fce8261958458cc2
>>>>>>> f1ea5e30f7226fed70ab3939fff0f60ba4b269b3
end
