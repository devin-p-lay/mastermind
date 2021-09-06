require 'rspec'
require './lib/start_game'
require './lib/secret_code'

RSpec.describe StartGame do
  it "exists" do
    start_game = StartGame.new
    expect(start_game).to be_an_instance_of(StartGame)
  end

  it 'introduces the game' do
    start_game = StartGame.new
    expect(start_game.welcome).to eq(intro)
  end

end
